package com.confectionery.demo.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.confectionery.demo.model.Login;
import com.confectionery.demo.repository.LoginRepository;

import jakarta.persistence.EntityManager;
import jakarta.persistence.PersistenceContext;
import jakarta.persistence.StoredProcedureQuery;
import jakarta.transaction.Transactional;

@Service
@Transactional
public class LoginService {
    
    @Autowired
    private LoginRepository loginRepository;
    @PersistenceContext
    private EntityManager entityManager;

    public List <Login> isUser(String userName,String passWord){

        String userRole="";
        StoredProcedureQuery spq= entityManager.createStoredProcedureQuery("isUser");
        spq.registerStoredProcedureParameter("userName",String.class, jakarta.persistence.ParameterMode.IN);
        spq.registerStoredProcedureParameter("passWord",String.class, jakarta.persistence.ParameterMode.IN);
        spq.registerStoredProcedureParameter("userRole", String.class, jakarta.persistence.ParameterMode.OUT);
        spq.setParameter("userName",userName);
        spq.setParameter("passWord", passWord);

        userRole=spq.getResultList().toString();

        return spq.getResultList();
    }
}
