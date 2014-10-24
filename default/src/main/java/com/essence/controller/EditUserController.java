package com.essence.controller;

import com.essence.core.consumer.ParameterMapping;
import com.essence.core.fingerprint.UserFingerprint;
import com.essence.core.user.User;
import com.essence.core.user.UserRetriever;
import com.googlecode.htmleasy.RedirectException;
import com.googlecode.htmleasy.ViewWith;

import javax.ws.rs.*;
import javax.ws.rs.core.Response;
import java.net.URI;

import static com.googlecode.objectify.ObjectifyService.ofy;

/**
 * Created by manuelrodrigues on 23/10/14.
 */

@Path("/edit-user")
public class EditUserController {

    @GET
    @Path("/")
    @ViewWith("/user-management-view/edit-user-view.jsp")
    public UserModel edition(@CookieParam(ParameterMapping.userCookie) String id){
        return new UserModel(UserRetriever.getInstance().getUser(id));
    }

    @GET
    @Path("/{id}")
    @ViewWith("/user-management-view/edit-user-view.jsp")
    public UserModel adminEdition(@PathParam("id") Long idAgent, @CookieParam(ParameterMapping.userCookie) String id) {
        return new UserModel(UserRetriever.getInstance().getUser(idAgent.toString()));
    }


    @POST
    @Path("/profil-edited/{id}")
    public Response editProfil(@FormParam("name") String name, @FormParam("password") String password,@PathParam("id") Long idAgent, @CookieParam(ParameterMapping.userCookie) String id){
        User user = UserRetriever.getInstance().getUser(idAgent.toString());
        User userChanger = UserRetriever.getInstance().getUser(id);
        if(user.getId() == userChanger.getId() || userChanger.getRole() == User.RoleEnum.Admin || userChanger.getRole() == User.RoleEnum.Manager){
            user.setName(name);
            user.setPassword(password);
            user.save();
            Response.ResponseBuilder resp = Response.seeOther(URI.create("/menu"));
            return resp.build();
        }
        else throw new RedirectException("/");
    }

    @POST
    @Path("/reset-fingerprint")
    public void resetFingerprint(@CookieParam(ParameterMapping.userCookie) String id){
        User user = UserRetriever.getInstance().getUser(id);
        UserFingerprint uf = ofy().load().type(UserFingerprint.class).filter("userId", id).first().now();
        uf.delete();
        //Return informations for User
    }

    @POST
    @Path("/change-role")
    public void changeRole(@CookieParam(ParameterMapping.userCookie) String id, int role){
        User user = UserRetriever.getInstance().getUser(id);
        switch (role){
            case 1 : user.setRole(User.RoleEnum.Admin); break;
            case 2 : user.setRole(User.RoleEnum.Agent); break;
            case 3 : user.setRole(User.RoleEnum.Manager); break;
            case 4 : user.setRole(User.RoleEnum.TeamLeader); break;
        }
        user.save();
    }







}
