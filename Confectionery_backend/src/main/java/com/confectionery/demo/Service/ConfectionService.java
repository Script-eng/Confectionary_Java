package com.confectionery.demo.Service;

import com.confectionery.demo.model.Confections;
import com.confectionery.demo.repository.ConfectionRepository;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.StoredProcedureQuery;
import jakarta.transaction.Transactional;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.autoconfigure.ssl.JksSslBundleProperties.Store;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.jdbc.object.StoredProcedure;
import org.springframework.stereotype.Service;

@Service
@Transactional
public class ConfectionService {
    @Autowired
    private ConfectionRepository confectionRepository;

    @PersistenceContext
    private EntityManager entityManager;

    public List <Confections> getAllConfections(){
        StoredProcedureQuery spq=entityManager.createStoredProcedureQuery("getAllConfections");
        return spq.getResultList();
    }

    public List <Confections> getConfectionByName(){
        StoredProcedureQuery spq=entityManager.createStoredProcedureQuery("getConfectionByName");
        return spq.getResultList();

    }


    
}