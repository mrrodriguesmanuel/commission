package com.essence.controller;

import com.essence.core.user.User;

import java.util.List;

/**
 * Created by manuelrodrigues on 24/10/14.
 */
public class UserListModel {
    private List<User> users;

    public UserListModel(){

    }

    public UserListModel(List<User> users) {
        this.users = users;
    }

    public List<User> getUsers() {
        return users;
    }

    public void setUsers(List<User> users) {
        this.users = users;
    }
}
