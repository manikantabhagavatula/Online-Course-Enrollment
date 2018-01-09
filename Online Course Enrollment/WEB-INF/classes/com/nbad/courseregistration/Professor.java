/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nbad.courseregistration;

/**
 *
 * @author Mani
 */
public class Professor {
    private int profId, depID;
    private String profname;

    /**
     * @return the profId
     */
    

    /**
     * @return the profname
     */
    public String getProfname() {
        return profname;
    }

    /**
     * @param profname the profname to set
     */
    public void setProfname(String profname) {
        this.profname = profname;
    }

    /**
     * @return the profId
     */
    public int getProfId() {
        return profId;
    }

    /**
     * @param profId the profId to set
     */
    public void setProfId(int profId) {
        this.profId = profId;
    }

    /**
     * @return the depID
     */
    public int getDepID() {
        return depID;
    }

    /**
     * @param depID the depID to set
     */
    public void setDepID(int depID) {
        this.depID = depID;
    }
    
}
