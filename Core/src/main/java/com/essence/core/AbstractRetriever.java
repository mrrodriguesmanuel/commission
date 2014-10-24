package com.essence.core;

import static com.googlecode.objectify.ObjectifyService.ofy;

import com.essence.core.user.User;
import com.essence.core.vos.iRetriever;
import com.googlecode.objectify.Key;

import java.util.List;

/**
 * Created by manuelrodrigues on 23/10/14.
 */
public abstract class AbstractRetriever<T> implements iRetriever<T> {

    @Override
    public T get(Key<T> key) {
        return ofy().load().key(key).now();
    }
}
