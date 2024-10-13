package com.confectionery.demo.Service;

import com.confectionery.demo.model.Content;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ContentService extends JpaRepository<Content, Long> {
    // List <Content> getAllContents();
}