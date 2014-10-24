package com.essence.core.user;

import java.io.Serializable;
import java.util.Date;

public class Tracking implements Serializable {

    private static final long serialVersionUID = 1L;

    private int impressions;

    private int interactions;
    private Date lastImpression;
    private Date lastInteraction;
    private String ipAddress;

    private String userAgent;
    private String XAppEngineCountry = "GB";
    private String XAppEngineRegion;
    private String XAppEngineCity;
    private String XAppEngineCityLatLong;

    public Tracking() {
    }


    public void addImpression() {
        this.lastImpression = new Date();
        this.impressions++;
    }

    public void addInteraction() {
        this.lastInteraction = new Date();
        this.interactions++;
    }

    public int getImpressions() {
        return impressions;
    }

    public int getInteractions() {
        return interactions;
    }

    public String getIpAddress() {
        return ipAddress;
    }

    public Date getLastImpression() {
        return lastImpression;
    }

    public Date getLastInteraction() {
        return lastInteraction;
    }

    public String getUserAgent() {
        return userAgent;
    }

    public String getXAppEngineCity() {
        return XAppEngineCity;
    }

    public String getXAppEngineCityLatLong() {
        return XAppEngineCityLatLong;
    }

    public String getXAppEngineCountry() {
        return XAppEngineCountry;
    }

    public String getXAppEngineRegion() {
        return XAppEngineRegion;
    }

    public void setImpressions(final int impressions) {
        this.impressions = impressions;
    }

    public void setInteractions(final int interactions) {
        this.interactions = interactions;
    }

    public void setIpAddress(String ipAddress) {
        this.ipAddress = ipAddress;
    }

    public void setLastImpression(final Date date) {
        this.lastImpression = date;
    }

    public void setLastInteraction(final Date date) {
        this.lastInteraction = date;
    }

    public void setUserAgent(String pubuserAgent) {
        this.userAgent = pubuserAgent;
    }

    public void setXAppEngineCity(String xAppEngineCity) {
        XAppEngineCity = xAppEngineCity;
    }

    public void setXAppEngineCityLatLong(String xAppEngineCityLatLong) {
        XAppEngineCityLatLong = xAppEngineCityLatLong;
    }

    public void setXAppEngineCountry(String xAppEngineCountry) {
        XAppEngineCountry = xAppEngineCountry;
    }

    public void setXAppEngineRegion(String xAppEngineRegion) {
        XAppEngineRegion = xAppEngineRegion;
    }
}