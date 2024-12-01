package com.confectionery.repository;

import com.confectionery.model.Confection;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ConfectionRepository extends JpaRepository<Confection, Long> {
}

