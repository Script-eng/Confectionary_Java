package com.confectionery.service;

import java.util.List;

import org.springframework.stereotype.Service;

import com.confectionery.model.ContactMessage;
import com.confectionery.repository.ContactMessageRepository;

import jakarta.transaction.Transactional;

@Service
@Transactional
public class ContactService {
    private final ContactMessageRepository messageRepository;

    public ContactService(ContactMessageRepository messageRepository) {
        this.messageRepository = messageRepository;
    }

    public ContactMessage saveMessage(ContactMessage message) {
        return messageRepository.save(message);
    }

    public List<ContactMessage> getAllMessages() {
        return messageRepository.findAllByOrderBySentAtDesc();
    }
}
