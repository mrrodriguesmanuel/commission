package com.essence.core.user;

import com.essence.core.AbstractRetriever;
import com.essence.core.consumer.ParameterMapping;
import com.google.common.base.Strings;
import com.googlecode.objectify.Key;

import javax.ws.rs.core.Cookie;
import javax.ws.rs.core.NewCookie;
import javax.ws.rs.core.Response;
import java.net.URI;
import java.util.List;

import static com.googlecode.objectify.ObjectifyService.ofy;

/**
 * Created by manuelrodrigues on 23/10/14.
 */
public class UserRetriever extends AbstractRetriever<User>{

    private static final UserRetriever instance = new UserRetriever();
    public static UserRetriever getInstance(){
        return instance;
    }

    private UserRetriever(){

    }

    @Override
    public List<User> getAll() {
        return ofy().load().type(User.class).list();
    }

    @Override
    public User get(Long id, Key<?> parent) {
        if (id != null){
            return get(Key.create(User.class, id));
        }
        return null;
    }

    public User getUser(String id) {
        if (!Strings.isNullOrEmpty(id)){
            return get(Key.create(User.class, Long.parseLong(id)));
        }
        return null;
    }

    public List<User> get(String email) {
        List<User> vos = null;
        if (!Strings.isNullOrEmpty(email)) {
            vos = ofy().load().type(User.class).filter("email", email).list();
        }
        return vos;
    }

    public List<User> getAgent(){
        return ofy().load().type(User.class).filter("role", User.RoleEnum.Agent.getRole()).list();
    }

}
