package com.essence.core.user;

import com.essence.core.vos.AbstractVO;

import java.util.Date;

/**
 * Created by manuelrodrigues on 20/10/2014.
 */
public class UserAttendance extends AbstractVO<UserAttendance>{

    public void setUser(User user) {
        this.user = user;
    }

    public void setDateDay(Date dateDay) {
        this.dateDay = dateDay;
    }

    public void setHoursAttended(Double hoursAttended) {
        this.hoursAttended = hoursAttended;
    }

    public void setStampIn(Date stampIn) {
        this.stampIn = stampIn;
    }

    public void setStampOut(Date stampOut) {
        this.stampOut = stampOut;
    }

    public User getUser() {

        return user;
    }

    public Date getDateDay() {
        return dateDay;
    }

    public Double getHoursAttended() {
        return hoursAttended;
    }

    public Date getStampIn() {
        return stampIn;
    }

    public Date getStampOut() {
        return stampOut;
    }

    private User user;
    private Date dateDay;
    private Double hoursAttended;
    private Date stampIn;
    private Date stampOut;


    public UserAttendance(User user, Date dateDay, Double hoursAttended, Date stampIn, Date stampOut) {
        this.user = user;
        this.dateDay = dateDay;
        this.hoursAttended = hoursAttended;
        this.stampIn = stampIn;
        this.stampOut = stampOut;
    }

    public UserAttendance() {
    }






}
