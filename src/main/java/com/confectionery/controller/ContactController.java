package com.confectionery.controller;

import org.springframework.security.core.Authentication;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.confectionery.model.ContactMessage;
import com.confectionery.service.ContactService;

import jakarta.validation.Valid;

@Controller
@RequestMapping("/contact")
public class ContactController {
    private final ContactService contactService;

    public ContactController(ContactService contactService) {
        this.contactService = contactService;
    }

    @GetMapping
    public String showContactForm(Model model, Authentication authentication) {
        model.addAttribute("contactMessage", new ContactMessage());
        
        String currentUser = authentication != null ? 
            authentication.getName() : "Guest";
        model.addAttribute("currentUser", currentUser);
        
        return "contact";
    }

    @PostMapping
    public String submitForm(
            @Valid @ModelAttribute ContactMessage contactMessage,
            BindingResult bindingResult,
            Model model,
            Authentication authentication,
            RedirectAttributes redirectAttributes) {
        
        if (bindingResult.hasErrors()) {
            return "contact";
        }
        if (authentication != null) {
            contactMessage.setSenderName(authentication.getName());
        } else if (contactMessage.getSenderName() == null 
                  || contactMessage.getSenderName().trim().isEmpty()) {
            contactMessage.setSenderName("Guest");
        }
        
        if (contactMessage.getSubject().trim().isEmpty() || contactMessage.getMessage().trim().isEmpty()) {
            throw new IllegalArgumentException("Subject or message cannot be blank");
        }

        contactService.saveMessage(contactMessage);
        redirectAttributes.addFlashAttribute("successMessage", 
            "Your message has been sent successfully!");
        
        return "redirect:/contact";
    }
}