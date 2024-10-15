package com.confectionery.demo.repository;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import com.confectionery.demo.model.Contents;

@Repository
public interface ContentRepository extends JpaRepository<Contents, Long> {
}
