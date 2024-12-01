package com.confectionery.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;

import com.confectionery.model.Content;

public interface ContentRepository extends JpaRepository<Content, Long> {
    List<Content> findByConfectionId(Long confectionId);
}
