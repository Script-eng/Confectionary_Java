package com.confectionery.controller;

import com.confectionery.model.Confection;
import com.confectionery.service.ConfectionService;
import lombok.RequiredArgsConstructor;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/api/confections")
@RequiredArgsConstructor
public class ConfectionController {
    private final ConfectionService confectionService;

    @GetMapping
    public List<Confection> getAllConfections() {
        return confectionService.getAllConfections();
    }

    @GetMapping("/{id}")
    public ResponseEntity<Confection> getConfectionById(@PathVariable Long id) {
        return ResponseEntity.ok(confectionService.getConfectionById(id));
    }

    @PostMapping
    public ResponseEntity<Confection> createConfection(@RequestBody Confection confection) {
        return ResponseEntity.ok(confectionService.createConfection(confection));
    }

    @PutMapping("/{id}")
    public ResponseEntity<Confection> updateConfection(
            @PathVariable Long id, 
            @RequestBody Confection confectionDetails) {
        return ResponseEntity.ok(confectionService.updateConfection(id, confectionDetails));
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<?> deleteConfection(@PathVariable Long id) {
        confectionService.deleteConfection(id);
        return ResponseEntity.ok().build();
    }
}

