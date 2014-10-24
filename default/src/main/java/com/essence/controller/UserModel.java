package com.essence.controller;

import com.essence.core.user.User;


/**
 * Created by manuelrodrigues on 24/10/14.
 */
public class UserModel {
    public UserModel(User user) {
        this.user = user;
    }

    public UserModel(){

    }

    private User user;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }
}
