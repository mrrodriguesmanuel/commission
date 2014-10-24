package com.essence.core.utils;

import com.essence.core.logging.LoggingEvents;
import com.essence.core.user.User;
import com.essence.core.user.UserRetriever;
import com.google.common.base.Strings;
import com.googlecode.htmleasy.RedirectException;

import javax.ws.rs.Path;

import static com.googlecode.objectify.ObjectifyService.ofy;

/**
 * Created by manuelrodrigues on 23/10/14.
 */
public class EditUser {

    public static User editUsername(final String name, final String email) {
        if (Strings.isNullOrEmpty(email) || Strings.isNullOrEmpty(email)){
            return null;
        }

        User user = null;

        if (user == null || Strings.isNullOrEmpty(user.getEmail())){
            LoggingEvents.level5Threat("WE DID NOT FIND A USER" + email);
            return null;
        } else {
            LoggingEvents.level5Threat(user.getName());
        }

        //if (PasswordHashing.checkpw(password, user.getPassword())) {
        if(name.equals(user.getName())){
            return user;
        }
        else{
            //Edit name
            //ofy().load().type(User.class).

        }

        return null;
    }


    public void changePassword(User user, String password){
        user.setPassword(password);
    }

    public void resetBiometric(User user){
        //Delete prints from database
    }

    public void changeRole(User user, String role) {

    }




}
