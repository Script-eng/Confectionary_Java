package com.confectionery.demo.Service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.query.Procedure;
import org.springframework.stereotype.Repository;
import org.springframework.stereotype.Service;

import com.confectionery.demo.model.Prices;
import com.confectionery.demo.repository.PriceRepository;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.StoredProcedureQuery;
import jakarta.transaction.Transactional;

import java.util.List;

@Service
@Transactional
public class PriceService {
    @Autowired
    private PriceRepository priceRepository;
    @PersistenceContext
    private EntityManager entityManager;

    public List <Prices> getAllPrices(){
        StoredProcedureQuery spq=entityManager.createStoredProcedureQuery("getAllPrices");

        return spq.getResultList();
        // spq.execute();
    }

    public List <Prices> getPriceByConfID(String confID){
        StoredProcedureQuery spq=entityManager.createStoredProcedureQuery("getPriceByConfID");
        spq.registerStoredProcedureParameter("confID", String.class, jakarta.persistence.ParameterMode.IN);
        spq.setParameter("confID", confID);
        return spq.getResultList();
    }
    
}