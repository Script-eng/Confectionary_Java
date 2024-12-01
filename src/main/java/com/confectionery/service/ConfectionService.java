package com.confectionery.service;

import com.confectionery.model.Confection;
import com.confectionery.repository.ConfectionRepository;

import exception.ResourceNotFoundException;
import lombok.RequiredArgsConstructor;

import java.util.List;

import org.springframework.stereotype.Service;

@Service
@RequiredArgsConstructor
public class ConfectionService {
    private final ConfectionRepository confectionRepository;

    public List<Confection> getAllConfections() {
        return confectionRepository.findAll();
    }

    public Confection getConfectionById(Long id) {
        return confectionRepository.findById(id)
            .orElseThrow(() -> new ResourceNotFoundException("Confection not found"));
    }

    public Confection createConfection(Confection confection) {
        return confectionRepository.save(confection);
    }

    public Confection updateConfection(Long id, Confection confectionDetails) {
        Confection confection = getConfectionById(id);
        confection.setCname(confectionDetails.getCname());
        confection.setType(confectionDetails.getType());
        confection.setPrizewinning(confectionDetails.getPrizewinning());
        return confectionRepository.save(confection);
    }

    public void deleteConfection(Long id) {
        Confection confection = getConfectionById(id);
        confectionRepository.delete(confection);
    }
}
