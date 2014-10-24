package com.essence.core.vos;

import com.essence.core.user.User;
import com.googlecode.objectify.ObjectifyService;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;


public class StartupListener implements ServletContextListener {

    public static Class[] entities = {
            User.class,
};

    @Override
    public void contextDestroyed(ServletContextEvent arg0) {

    }

    @Override
    public void contextInitialized(ServletContextEvent arg0) {
        for (Class clazz : entities){
            ObjectifyService.register(clazz);
        }
    }

} 