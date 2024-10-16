package com.confectionery.demo.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.confectionery.demo.model.Login;

@Repository
public interface LoginRepository  extends JpaRepository <Login,Long>{
    
}
