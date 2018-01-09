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
public class Student {
    private String studId;
    private String studname;
    private String addressId;
    private String Dob;
    private String Degree;

    /**
     * @return the studId
     */
    public String getStudId() {
        return studId;
    }

    /**
     * @param studId the studId to set
     */
    public void setStudId(String studId) {
        this.studId = studId;
    }

    /**
     * @return the studname
     */
    public String getStudname() {
        return studname;
    }

    /**
     * @param studname the studname to set
     */
    public void setStudname(String studname) {
        this.studname = studname;
    }

    /**
     * @return the addressId
     */
    public String getAddressId() {
        return addressId;
    }

    /**
     * @param addressId the addressId to set
     */
    public void setAddressId(String addressId) {
        this.addressId = addressId;
    }

    /**
     * @return the Dob
     */
    public String getDob() {
        return Dob;
    }

    /**
     * @param Dob the Dob to set
     */
    public void setDob(String Dob) {
        this.Dob = Dob;
    }

    /**
     * @return the Degree
     */
    public String getDegree() {
        return Degree;
    }

    /**
     * @param Degree the Degree to set
     */
    public void setDegree(String Degree) {
        this.Degree = Degree;
    }
}
