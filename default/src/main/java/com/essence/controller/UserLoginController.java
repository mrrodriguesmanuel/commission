package com.essence.controller;

import com.essence.core.consumer.ParameterMapping;
import com.essence.core.user.User;
import com.essence.core.utils.LoginCheck;
import com.google.common.base.Strings;
import com.googlecode.htmleasy.RedirectException;
import com.googlecode.htmleasy.ViewWith;

import javax.ws.rs.CookieParam;
import javax.ws.rs.FormParam;
import javax.ws.rs.POST;
import javax.ws.rs.Path;
import javax.ws.rs.core.Cookie;
import javax.ws.rs.core.NewCookie;
import javax.ws.rs.core.Response;
import java.net.URI;

/**
 * Created by manuelrodrigues on 21/10/14.
 */

@Path("/user-management")
public class UserLoginController {

    @POST
    @Path("/")
    public Response getUser(@FormParam("mail") String mail, @FormParam("password") String password){
        User user = LoginCheck.loginCheck(mail, password);
        if(user != null){
            Cookie cookie = new Cookie(ParameterMapping.userCookie,Long.toString(user.getId()), "/", null);
            Response.ResponseBuilder resp = Response.seeOther(URI.create("/menu"));
            resp.cookie(new NewCookie(cookie));
            return resp.build();
        }
        else {
            //Alert user when identification went bad
            Response.ResponseBuilder resp = Response.seeOther(URI.create("/"));
            return resp.build();
        }
    }

    @POST
    @Path("/add-user")
    public Response addUser(@FormParam("mail") String email, @FormParam("name") String name, @FormParam("password") String password){
        User user = LoginCheck.addUser(email,name,password);
        if(user != null){
            Cookie cookie = new Cookie(ParameterMapping.userCookie, Long.toString(user.getId()), "/", null);
            Response.ResponseBuilder resp = Response.seeOther(URI.create("/menu"));
            resp.cookie(new NewCookie(cookie));
            return resp.build();

        }
        else {
            //Alert user that he misses informations
            Response.ResponseBuilder resp = Response.seeOther(URI.create("/"));
            return resp.build();
        }
    }



    @POST
    @Path("/forgotten-password")
    @ViewWith("/index.jsp")
    public void forgottenPassword(@FormParam("mail") String mail){
        if(LoginCheck.forgottenPassword(mail)){
        //Redirect to a page which said that an email has been send
        }
        else throw new RedirectException("user-management-view/ForgottenPassword.jsp");
    }


}