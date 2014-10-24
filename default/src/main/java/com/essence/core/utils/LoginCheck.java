package com.essence.core.utils;

import com.essence.core.logging.LoggingEvents;
import com.essence.core.user.User;
import com.google.common.base.Strings;
import com.googlecode.objectify.ObjectifyService;

import static com.googlecode.objectify.ObjectifyService.ofy;

/**
 * Created by manuelrodrigues on 22/10/14.
 */
public class LoginCheck {

    public static User loginCheck(final String email, final String password) {
        ObjectifyService.register(User.class);
        if (Strings.isNullOrEmpty(email) || Strings.isNullOrEmpty(password)){
            return null;
        }
        User user = ofy().load().type(User.class).filter("email", email.trim().toLowerCase()).first().now();

        if (user == null || Strings.isNullOrEmpty(user.getEmail())){
            LoggingEvents.level5Threat("WE DID NOT FIND A USER" + email);
            return null;
        } else {
            LoggingEvents.level5Threat(user.getName());
        }

        //if (PasswordHashing.checkpw(password, user.getPassword())) {
        if(password.equals(user.getPassword())){
            return user;
        }

        return null;
    }

    public static User addUser(final String email, final String name, final String password) {
        ObjectifyService.register(User.class);
        if (Strings.isNullOrEmpty(email) || Strings.isNullOrEmpty(name) || Strings.isNullOrEmpty(password)) {
            return null;
        }
        User user = new User(email, password, name);
        user.save();
        LoggingEvents.level5Threat("NEW USER CREATED " + email);
        return user;
    }



    public static boolean forgottenPassword(final String email){
        if(Strings.isNullOrEmpty(email)) return false;
        User user = ofy().load().type(User.class).filter("email", email.trim().toLowerCase()).first().now();
        if(user == null || Strings.isNullOrEmpty(user.getEmail() )){
            LoggingEvents.level5Threat("WE DID NOT FIND A USER" + email);
            return false;
        }
        else LoggingEvents.level5Threat(user.getName());
        if(email.equals(user.getEmail())) return true;
        return false;
    }

    /*public static UserCompany checkUserHasLoggedIn(User user) {
        if (user == null || user.getId() == null) {
            LoggingEvents.level5Threat("User does not belong here!!");
            throwRedirectException(null);
            return null;
        } else {
            LoggingEvents.level5Threat(user.getFullName());
        }
        UserCompany uc = UserCompanyUtils.getUserCompanyForUser(user);

        if (user.getPermission() != User.PermissionEnum.client && (uc == null || uc.getId() == null || uc.getUser() == null || uc.getCompany() == null || user.getPermission() == User.PermissionEnum.none)){
            LoggingEvents.level5Threat("Could not find a user company or something else..");
            throwRedirectException(null);
        }

        return uc;
    }

    public static UserCompany checkUserHasLoggedIn(User user, String url) {
        if (user == null || user.getId() == null) {
            LoggingEvents.level5Threat("User does not belong here!!");
            throwRedirectException(url);
            return null;
        } else {
            LoggingEvents.level5Threat(user.getFullName());
        }
        UserCompany uc = UserCompanyUtils.getUserCompanyForUser(user);

        if (user.getPermission() != User.PermissionEnum.client && (uc == null || uc.getId() == null || uc.getUser() == null || uc.getCompany() == null || user.getPermission() == User.PermissionEnum.none)){
            LoggingEvents.level5Threat("Could not find a user company or something else..");
            throwRedirectException(url);
        }

        return uc;
    }

    private static void throwRedirectException(String url){
        if (url == null) {
            throw new RedirectException("/login/");
        } else {
            try {
                throw new RedirectException("/login/?url="+ URLEncoder.encode(url, "utf-8"));
            } catch (UnsupportedEncodingException e) {
                LoggingEvents.level2Threat("boom",e);
            }
        }
    }*/
}
