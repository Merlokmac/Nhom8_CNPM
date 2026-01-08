package com.prototype.arpartment_managing.service;

import com.prototype.arpartment_managing.dto.RevenueDTO;
import com.prototype.arpartment_managing.exception.*;
import com.prototype.arpartment_managing.model.Apartment;
import com.prototype.arpartment_managing.model.Fee;
import com.prototype.arpartment_managing.model.Revenue;
import com.prototype.arpartment_managing.repository.ApartmentRepository;
import com.prototype.arpartment_managing.repository.FeeRepository;
import com.prototype.arpartment_managing.repository.RevenueRepository;
import jakarta.transaction.Transactional;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Primary;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.time.LocalDate;
import java.time.LocalDateTime;
import java.util.*;
import java.util.stream.Collectors;

@Primary
@Service
public class RevenueService {

    @Autowired
    private RevenueRepository revenueRepository;
    @Autowired
    private FeeRepository feeRepository;
    @Autowired
    private ApartmentRepository apartmentRepository;
    @Autowired
    private QRCodeService qrCodeService;

    /* ========================= GET ========================= */

    public List<RevenueDTO> getAllRevenues() {
        return revenueRepository.findAll()
                .stream()
                .map(r -> new RevenueDTO(r, r.getApartment()))
                .collect(Collectors.toList());
    }

    public ResponseEntity<?> getRevenue(Long id) {
        Revenue revenue = revenueRepository.findById(id)
                .orElseThrow(() -> new RevenueNotFoundException(id));
        return ResponseEntity.ok(new RevenueDTO(revenue, revenue.getApartment()));
    }

    public ResponseEntity<?> getRevenueByApartmentandType(String apartmentId, String type) {
        Revenue revenue = revenueRepository
                .findByApartment_ApartmentIdAndType(apartmentId, type)
                .orElseThrow(() -> new RevenueNotFoundExceptionType(type));

        Apartment apartment = apartmentRepository.findByApartmentId(apartmentId)
                .orElseThrow(() -> new ApartmentNotFoundException(apartmentId));

        return ResponseEntity.ok(new RevenueDTO(revenue, apartment));
    }

    public List<Revenue> getRevenueByApartmentId(String apartmentId) {
        return revenueRepository.findByApartment_ApartmentId(apartmentId);
    }

    /* ========================= CREATE ========================= */

    @Transactional
    public Revenue createRevenue(RevenueDTO revenueDTO) {

        if (revenueDTO.getApartmentId() == null) {
            throw new IllegalArgumentException("Apartment ID must not be null");
        }

        Apartment apartment = apartmentRepository.findByApartmentId(revenueDTO.getApartmentId())
                .orElseThrow(() -> new ApartmentNotFoundException(revenueDTO.getApartmentId()));

        Revenue revenue = new Revenue();
        revenue.setApartment(apartment);
        revenue.setCreateDate(LocalDateTime.now());
        revenue.setType(revenueDTO.getType());
        revenue.setStatus("Unpaid");

        double used;
        if ("Service".equalsIgnoreCase(revenueDTO.getType())) {
            used = apartment.getArea();
        } else {
            if (revenueDTO.getUsed() <= 0) {
                throw new IllegalArgumentException("Used must be greater than 0");
            }
            used = revenueDTO.getUsed();
        }
        revenue.setUsed(used);

        if (revenueDTO.getEndDate() != null) {
            revenue.setEndDate(revenueDTO.getEndDate());
        }

        double total;
        if ("CONTRIBUTION".equalsIgnoreCase(revenueDTO.getType())) {
            total = used;
        } else {
            Fee fee = feeRepository.findByType(revenueDTO.getType())
                    .orElseThrow(() -> new RuntimeException("Fee not found"));
            total = used * fee.getPricePerUnit();
        }
        revenue.setTotal(total);

        revenue = revenueRepository.save(revenue);

        apartment.getRevenues().add(revenue);
        apartment.setTotal(calculateTotalPayment(apartment.getApartmentId()));
        apartmentRepository.save(apartment);

        return revenue;
    }

    /* ========================= DELETE ========================= */

    @Transactional
    public void deleteRevenue(Long id) {
        Revenue revenue = revenueRepository.findById(id)
                .orElseThrow(() -> new RevenueNotFoundException(id));

        Apartment apartment = revenue.getApartment();
        if (apartment != null) {
            apartment.getRevenues().removeIf(r -> r.getId().equals(id));
            apartment.setTotal(calculateTotalPayment(apartment.getApartmentId()));
            apartmentRepository.save(apartment);
        }

        revenueRepository.deleteById(id);
    }

    /* ========================= UPDATE ========================= */

    @Transactional
    public Revenue updateRevenueByID(RevenueDTO revenueDTO, Long id) {

        Revenue revenue = revenueRepository.findById(id)
                .orElseThrow(() -> new RevenueNotFoundException(id));

        if (revenueDTO.getStatus() != null) {
            revenue.setStatus(revenueDTO.getStatus());
        }

        if (!"Service".equalsIgnoreCase(revenue.getType())
                && revenueDTO.getUsed() > 0) {

            revenue.setUsed(revenueDTO.getUsed());

            if (!"CONTRIBUTION".equalsIgnoreCase(revenue.getType())) {
                Fee fee = feeRepository.findByType(revenue.getType())
                        .orElseThrow(() -> new RuntimeException("Fee not found"));
                revenue.setTotal(revenue.getUsed() * fee.getPricePerUnit());
            } else {
                revenue.setTotal(revenue.getUsed());
            }
        }

        Revenue saved = revenueRepository.save(revenue);

        Apartment apartment = saved.getApartment();
        if (apartment != null) {
            apartment.setTotal(calculateTotalPayment(apartment.getApartmentId()));
            apartmentRepository.save(apartment);
        }

        return saved;
    }

    /* ========================= CALCULATE ========================= */

    public Double calculateTotalPayment(String apartmentId) {

        List<Revenue> revenues = revenueRepository.findByApartment_ApartmentId(apartmentId);
        if (revenues == null || revenues.isEmpty()) return 0.0;

        double total = 0.0;

        for (Revenue revenue : revenues) {
            if (!"Unpaid".equalsIgnoreCase(revenue.getStatus())
                    && !"Overdue".equalsIgnoreCase(revenue.getStatus())) {
                continue;
            }
            total += revenue.getTotal();
        }

        return total;
    }

    /* ========================= QR ========================= */

    @Transactional
    public Map<String, Object> createRevenueWithQR(RevenueDTO revenueDTO) {
        Revenue revenue = createRevenue(revenueDTO);
        String token = UUID.randomUUID().toString();
        revenue.setPaymentToken(token);
        revenueRepository.save(revenue);

        Map<String, Object> res = new HashMap<>();
        res.put("revenue", new RevenueDTO(revenue, revenue.getApartment()));
        res.put("paymentToken", token);
        res.put("qrCode", qrCodeService.generateQRCodImage(token));
        return res;
    }

    public Map<String, Object> getQRCode(String paymentToken) { // thêm vào
        Revenue revenue = revenueRepository.findByPaymentToken(paymentToken)
                .orElseThrow(() -> new RevenueNotFoundException("Payment not found"));

        Map<String, Object> res = new HashMap<>();
        res.put("paymentToken", paymentToken);
        res.put("qrCode", qrCodeService.generateQRCodImage(paymentToken));
        return res;
    }

    public Revenue getRevenueByPaymentToken(String paymentToken) { // thêm vào
        return revenueRepository.findByPaymentToken(paymentToken)
                .orElseThrow(() -> new RevenueNotFoundException("Payment not found"));
    }

    @Transactional
    public Revenue completePayment(String paymentToken) {
        Revenue revenue = getRevenueByPaymentToken(paymentToken);
        revenue.setStatus("Paid");
        revenue.setPaidDate(LocalDateTime.now());
        return revenueRepository.save(revenue);
    }

    /* ========================= CONTRIBUTION ========================= */

    public List<RevenueDTO> getAllContributions(String apartmentId) { // thêm vào
        return revenueRepository
                .findByApartment_ApartmentIdAndTypeIgnoreCase(apartmentId, "CONTRIBUTION")
                .stream()
                .map(r -> new RevenueDTO(r, r.getApartment()))
                .collect(Collectors.toList());
    }

    public List<RevenueDTO> getRevenuesNotContribution(String apartmentId) { // thêm vào
        return revenueRepository
                .findByApartment_ApartmentIdAndTypeNotIgnoreCase(apartmentId, "CONTRIBUTION")
                .stream()
                .map(r -> new RevenueDTO(r, r.getApartment()))
                .collect(Collectors.toList());
    }

    /* ========================= EXTRA ========================= */

    public void updateAllRevenue() { // thêm vào
        List<Apartment> apartments = apartmentRepository.findAll();
        for (Apartment a : apartments) {
            a.setTotal(calculateTotalPayment(a.getApartmentId()));
            apartmentRepository.save(a);
        }
    }

    public List<RevenueDTO> getRevenuesByCreateDate(LocalDate date) { // thêm vào
        return revenueRepository.findAll()
                .stream()
                .filter(r -> r.getCreateDate() != null &&
                        r.getCreateDate().toLocalDate().equals(date))
                .map(r -> new RevenueDTO(r, r.getApartment()))
                .collect(Collectors.toList());
    }

    @Transactional
    public Revenue payRevenueById(Long revenueId) {
        Revenue revenue = revenueRepository.findById(revenueId)
            .orElseThrow(() -> new RevenueNotFoundException(revenueId));

        if ("Paid".equalsIgnoreCase(revenue.getStatus())) {
            throw new IllegalStateException("Revenue already paid");
        }

        revenue.setStatus("Paid");
        revenue.setPaidDate(LocalDateTime.now());

        Revenue saved = revenueRepository.save(revenue);

        // cập nhật total cho apartment
        Apartment apartment = saved.getApartment();
        if (apartment != null) {
            apartment.setTotal(calculateTotalPayment(apartment.getApartmentId()));
            apartmentRepository.save(apartment);
        }

        return saved;
    }

    @Transactional
    public void markAsPaid(Long revenueId) {
        Revenue revenue = revenueRepository.findById(revenueId)
            .orElseThrow(() -> new RuntimeException("Revenue not found"));

        if ("Paid".equalsIgnoreCase(revenue.getStatus())) {
            throw new RuntimeException("Revenue already paid");
        }

        revenue.setStatus("Paid");
        revenue.setPaidDate(LocalDateTime.now());

        revenueRepository.save(revenue);

        // cập nhật lại tổng tiền apartment nếu bạn có logic này
        Apartment apartment = revenue.getApartment();
        apartment.setTotal(calculateTotalPayment(apartment.getApartmentId()));
        apartmentRepository.save(apartment);
    }
}

