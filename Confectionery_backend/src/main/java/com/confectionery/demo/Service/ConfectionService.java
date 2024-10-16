package com.confectionery.demo.Service;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.confectionery.demo.model.Confections;
import com.confectionery.demo.repository.ConfectionRepository;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.StoredProcedureQuery;
import jakarta.transaction.Transactional;
import java.util.List;

@Service
@Transactional
public class ConfectionService {

    @Autowired
    private ConfectionRepository confectionRepository;

    @PersistenceContext
    private EntityManager entityManager;

    public List<Confections> getAllConfections() {
        StoredProcedureQuery spq = entityManager.createStoredProcedureQuery("getAllConfections", Confections.class);
        return spq.getResultList();
    }

    public List<Confections> getConfectionByName(String name) {
        StoredProcedureQuery spq = entityManager.createStoredProcedureQuery("getConfectionByName", Confections.class);
        spq.registerStoredProcedureParameter(1, String.class, jakarta.persistence.ParameterMode.IN);
        spq.setParameter(1, name);
        return spq.getResultList();
    }

    public List<Confections> getConfectionByType(String type) {
        StoredProcedureQuery spq = entityManager.createStoredProcedureQuery("getConfectionByType", Confections.class);
        spq.registerStoredProcedureParameter(1, String.class, jakarta.persistence.ParameterMode.IN);
        spq.setParameter(1, type);
        return spq.getResultList();
    }

    public List<Confections> getConfectionByPrize(int prize) {
        StoredProcedureQuery spq = entityManager.createStoredProcedureQuery("getConfectionByPrize", Confections.class);
        spq.registerStoredProcedureParameter(1, String.class, jakarta.persistence.ParameterMode.IN);
        spq.setParameter(1, prize);
        return spq.getResultList();
    }


}