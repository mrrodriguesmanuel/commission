package com.essence.core.vos;

/**
 * Created by manuelrodrigues on 23/10/14.
 */

import java.util.List;

import com.googlecode.objectify.Key;

public interface iRetriever<T> {

    List<T> getAll();

    T get(Long id, Key<?> parent);

    T get(Key<T> key);
}
