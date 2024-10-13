package com.confectionery.demo.Service;

import com.confectionery.demo.model.Confection;
import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Service;

@Service
public interface ConfectionService extends JpaRepository<Confection, Long> {
    // List<Confection> getAllConfections();
}