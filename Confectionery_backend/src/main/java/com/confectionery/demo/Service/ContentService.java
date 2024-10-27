package com.confectionery.demo.Service;

import com.confectionery.demo.model.Contents;
import com.confectionery.demo.repository.ContentRepository;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.StoredProcedureQuery;
import jakarta.transaction.Transactional;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
@Transactional
public class ContentService{
    @Autowired
    private ContentRepository contentRepository;

    @PersistenceContext
    private EntityManager entityManager;

    public List<Contents> getAllContents(){
        StoredProcedureQuery spq=entityManager.createStoredProcedureQuery("getAllContents");
        return spq.getResultList();
    }

    public List<Contents> getContentByFree(String free){
        StoredProcedureQuery spq=entityManager.createStoredProcedureQuery("getContentByConfID");
        spq.registerStoredProcedureParameter("free", String.class, jakarta.persistence.ParameterMode.IN);
        spq.setParameter("free", free);
        return spq.getResultList();
    }

    



}