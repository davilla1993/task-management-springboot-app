package com.pyramid.taskManagment.repository;

import java.util.List;

import javax.transaction.Transactional;

import org.springframework.data.jpa.repository.JpaRepository;

import com.pyramid.taskManagment.entities.Todo;

public interface TodoRepository extends JpaRepository < Todo, Long > {
    List < Todo > findByUserName(String user);
    
    @Transactional
    Long deleteByUserName(String userName);
}
