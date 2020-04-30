package com.pyramid.taskManagment.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.pyramid.taskManagment.entities.User;

public interface UserRepository extends JpaRepository<User, Long> {
	
    User findByUsername(String username);
}
