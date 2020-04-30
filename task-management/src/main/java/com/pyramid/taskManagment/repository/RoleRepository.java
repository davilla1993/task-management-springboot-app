package com.pyramid.taskManagment.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import com.pyramid.taskManagment.entities.Role;

public interface RoleRepository extends JpaRepository<Role, Long>{
	
	public Role findByName(String name);
}
