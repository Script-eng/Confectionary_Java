package com.confectionery.service;

import com.confectionery.model.ERole;
import com.confectionery.model.Role;
import com.confectionery.model.User;
import com.confectionery.repository.RoleRepository;
import com.confectionery.repository.UserRepository;
import com.confectionery.dto.RegistrationDTO;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.stream.Collectors;

@Service
public class UserService {
	private final UserRepository userRepository;
	private final RoleRepository roleRepository;
	private final PasswordEncoder passwordEncoder;

	public UserService(UserRepository userRepository, RoleRepository roleRepository, PasswordEncoder passwordEncoder) {
		this.userRepository = userRepository;
		this.roleRepository = roleRepository;
		this.passwordEncoder = passwordEncoder;
	}

	@Transactional
	public User registerUser(RegistrationDTO registrationDto) {
		if (userRepository.existsByUsername(registrationDto.getUsername())) {
			throw new RuntimeException("Username is already taken!");
		}

		if (userRepository.existsByEmail(registrationDto.getEmail())) {
			throw new RuntimeException("Email is already in use!");
		}

		User user = new User();
		user.setUsername(registrationDto.getUsername());
		user.setEmail(registrationDto.getEmail());
		user.setPassword(passwordEncoder.encode(registrationDto.getPassword()));
		user.setFirstName(registrationDto.getFirstName());
		user.setLastName(registrationDto.getLastName());

		Set<Role> roles = new HashSet<>();
		Role userRole = roleRepository.findByName(ERole.ROLE_USER)
				.orElseThrow(() -> new RuntimeException("Error: Role is not found."));
		roles.add(userRole);
		user.setRoles(roles);

		return userRepository.save(user);
	}

	public List<User> findAllUsers() {
        return userRepository.findAll();
    }

    public User findById(Long id) {
        return userRepository.findById(id)
            .orElseThrow(() -> new RuntimeException("User not found with id: " + id));
    }

    @Transactional
    public void updateUserRoles(Long userId, Set<ERole> newRoles) {
        User user = findById(userId);
        
        Set<Role> roleEntities = newRoles.stream()
            .map(role -> roleRepository.findByName(role)
                .orElseThrow(() -> new RuntimeException("Role not found: " + role)))
            .collect(Collectors.toSet());
        
        user.setRoles(roleEntities);
        userRepository.save(user);
    }
}