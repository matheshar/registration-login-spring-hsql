package com.hellokoding.auth.service;

import com.hellokoding.auth.model.User;

import java.util.List;

public interface UserService {

    void save(User user);
    User findByUsername(String username);
    void deleteUser(User user);
    List<User> listUsers();
}
