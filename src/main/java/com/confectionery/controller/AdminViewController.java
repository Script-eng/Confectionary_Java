package com.confectionery.controller;

import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

import org.springframework.http.ResponseEntity;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.confectionery.model.ERole;
import com.confectionery.model.Role;
import com.confectionery.model.User;
import com.confectionery.service.ContactService;
import com.confectionery.service.UserService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class AdminViewController {
	private final UserService userService;
	private final ContactService contactService;

	@GetMapping("/admin")
	@PreAuthorize("hasRole('ADMIN')")
	public String getUserManagementPage(Model model) {
		List<User> users = userService.findAllUsers();

		model.addAttribute("messages", contactService.getAllMessages());
		model.addAttribute("users", users);

		model.addAttribute("allRoles", ERole.values());

		return "admin";
	}

	@PostMapping("/users/update-roles")
	public String updateUserRoles(@RequestParam Long userId, @RequestParam(required = false) List<ERole> roles,
			RedirectAttributes redirectAttributes) {
		try {
			Set<ERole> newRoles = roles != null ? new HashSet<>(roles) : new HashSet<>();

			userService.updateUserRoles(userId, newRoles);

			redirectAttributes.addFlashAttribute("successMessage", "User roles have been updated successfully");
		} catch (Exception e) {

			redirectAttributes.addFlashAttribute("errorMessage", "Error updating user roles: " + e.getMessage());
		}

		return "redirect:/admin";
	}

	@GetMapping("/users/{userId}/roles")
	@ResponseBody
	public ResponseEntity<Set<ERole>> getUserRoles(@PathVariable Long userId) {
		try {
			User user = userService.findById(userId);
			Set<ERole> userRoles = user.getRoles().stream().map(Role::getName)
					.map(name -> ERole.valueOf(name.toString())).collect(Collectors.toSet());
			return ResponseEntity.ok(userRoles);
		} catch (Exception e) {
			return ResponseEntity.notFound().build();
		}
	}

}
