package com.essence.core.fingerprint;

import com.essence.core.vos.AbstractVO;

/**
 * Created by manuelrodrigues on 23/10/14.
 */
public class UserFingerprint extends AbstractVO<UserFingerprint> {

    private String hashFingerprint;
    private Long userId;


    public String getHashFingerprint() {
        return hashFingerprint;
    }

    public void setHashFingerprint(String hashFingerprint) {
        this.hashFingerprint = hashFingerprint;
    }

    public Long getUserId() {
        return userId;
    }

    public void setUserId(Long userId) {
        this.userId = userId;
    }

    public UserFingerprint(String hashFingerprint, Long userId) {
        this.hashFingerprint = hashFingerprint;
        this.userId = userId;
    }
}
