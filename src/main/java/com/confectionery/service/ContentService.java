package com.confectionery.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.confectionery.model.Content;
import com.confectionery.repository.ConfectionRepository;
import com.confectionery.repository.ContentRepository;

import exception.ResourceNotFoundException;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class ContentService {
    private final ContentRepository contentRepository;
    private final ConfectionRepository confectionRepository;

    public List<Content> getAllContents() {
        return contentRepository.findAll();
    }

    public Content getContentById(Long id) {
        return contentRepository.findById(id)
            .orElseThrow(() -> new ResourceNotFoundException("Content not found"));
    }

    public List<Content> getContentsByConfectionId(Long confectionId) {
        return contentRepository.findByConfectionId(confectionId);
    }

    public Content createContent(Content content) {
        confectionRepository.findById(content.getConfectionId())
            .orElseThrow(() -> new ResourceNotFoundException("Confection not found"));
        return contentRepository.save(content);
    }

    public Content updateContent(Long id, Content contentDetails) {
        Content content = getContentById(id);
        content.setConfectionId(contentDetails.getConfectionId());
        content.setFree(contentDetails.getFree());
        return contentRepository.save(content);
    }

    public void deleteContent(Long id) {
        Content content = getContentById(id);
        contentRepository.delete(content);
    }
}