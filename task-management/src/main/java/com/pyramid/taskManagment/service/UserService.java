package com.pyramid.taskManagment.service;

import java.util.List;

import com.pyramid.taskManagment.constants.Roles;
import com.pyramid.taskManagment.entities.User;

public interface UserService {
	void save(User user, Roles role);

	User findByUsername(String username);

	void deleteUser(long id);

	List<User> getUsers();
}
