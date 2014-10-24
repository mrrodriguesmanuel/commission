package com.essence.controller;

import com.essence.core.consumer.ParameterMapping;
import com.essence.core.user.User;
import com.essence.core.user.UserRetriever;
import com.googlecode.htmleasy.RedirectException;
import com.googlecode.htmleasy.ViewWith;

import javax.ws.rs.*;
import javax.ws.rs.core.Response;
import java.net.URI;
import java.util.List;

/**
 * Created by manuelrodrigues on 23/10/14.
 */
@Path("/menu")
public class MenuController {

    @GET
    @Path("/")
    public Response dispatcher(@CookieParam(ParameterMapping.userCookie) String id){
        User user = UserRetriever.getInstance().getUser(id);
        Response.ResponseBuilder resp;
        if(user.getRole().equals(User.RoleEnum.Admin) || user.getRole().equals(User.RoleEnum.Manager)){
            List<User> agents = UserRetriever.getInstance().getAgent();
            resp = Response.seeOther(URI.create("/menu/admin"));
        }
        else{
            resp = Response.seeOther(URI.create("/menu/user"));
        }
        return resp.build();
    }

    @GET
    @Path("/admin/")
    @ViewWith("/user-management-view/admin-menu.jsp")
    public UserListModel adminMenu(@CookieParam(ParameterMapping.userCookie) String id){
        User user = UserRetriever.getInstance().getUser(id);
        if(user.getRole().equals(User.RoleEnum.Admin) || user.getRole().equals(User.RoleEnum.Manager)){
            List<User> users = UserRetriever.getInstance().getAll();
            UserListModel view = new UserListModel();
            view.setUsers(users);
            return view;
        }
        else{
            throw new RedirectException("/menu");
        }
    }

    @POST
    @Path("/admin/change-role/{id}")
    public Response changeRole(@CookieParam(ParameterMapping.userCookie) String id, @FormParam("role") String role, @PathParam("id") Long idAgent){
        User user = UserRetriever.getInstance().getUser(id);
        if(user.getRole().equals(User.RoleEnum.Admin) || user.getRole().equals(User.RoleEnum.Manager)){
            User agent = UserRetriever.getInstance().getUser(idAgent.toString());
            switch(role){
                case "Agent" : agent.setRole(User.RoleEnum.Agent);break;
                case "Team Leader" : agent.setRole(User.RoleEnum.TeamLeader);break;
                case "Manager" :
                    if(user.getRole().equals(User.RoleEnum.Admin)) agent.setRole(User.RoleEnum.Manager);
                    break;
            }
            agent.save();
            Response.ResponseBuilder resp;
            resp = Response.seeOther(URI.create("/menu"));
            return resp.build();
        }
        else throw new RedirectException("/menu");
    }

    @GET
    @Path("/user")
    @ViewWith("/user-management-view/menu.jsp")
    public UserModel userMenu(@CookieParam(ParameterMapping.userCookie) String id){
        return new UserModel(UserRetriever.getInstance().getUser(id));
    }



}