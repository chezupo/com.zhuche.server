package com.zhuche.server.services;

import com.zhuche.server.dto.request.agreement.UpdateAgreementRequest;
import com.zhuche.server.model.Agreement;
import com.zhuche.server.model.AgreementType;
import com.zhuche.server.repositories.AgreementRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class AgreementService {
    private final AgreementRepository agreementRepository;

    public List<Agreement> getCheckoutOrderAgreements() {
        return agreementRepository.getCheckoutOrderAgreements(AgreementType.CHECKOUT_ORDER);
    }

    public Agreement updateAgreement(Long id, UpdateAgreementRequest request) {
        final Agreement agreement = agreementRepository.findById(id).get();
        agreement.setContent(request.getContent());
        agreement.setTitle(request.getTitle());

        return agreementRepository.save(agreement);
    }
}
