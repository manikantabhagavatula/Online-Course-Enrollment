/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nbad.dao;

import com.nbad.courseregistration.User;
import com.nbad.dbconnection.ConnectionPool;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import java.util.List;
import java.util.ArrayList;
import com.nbad.courseregistration.Course;
import com.nbad.courseregistration.Professor;

/**
 *
 * @author Mani
 */
public class Dao {

    ConnectionPool pool = ConnectionPool.getInstance();
    Connection connection = pool.getConnection();

    public String validateUser(String userName, String password) {

        System.out.println("In the validate user method!!!!");
        try {
            String query = "select userId,username,Password,roleId from users where userId =?";
            PreparedStatement statement = connection.prepareStatement(query);
            System.out.println("The entered userid is ========================================================" + userName);
            statement.setString(1, userName);
            System.out.println("The query is ++++++++++++++++++++++++" + query);
            ResultSet res = statement.executeQuery();
            System.out.println("The res value is $$$$$$$$$$$$$$" + res);
            if (res != null) {
                System.out.println("Valid User **************************");
                String userId = "";
                String pswd = "";
                String roleId = "1";

                while (res.next()) {
                    User user = new User();
                    pswd = res.getString("Password");
                    //System.out.println("Stored password for "+userName+"====="+pswd);
                    user.setPassword("Password");
                    roleId = res.getString("roleId");
                }
                if (password.equals(pswd)) {
                    if (roleId.equals("1")) {
                        return "admin";
                    } else {
                        return "student";
                    }
                } else {
                    return "Wrong Password";

                }
            }

        } catch (SQLException ex) {
            Logger.getLogger(Dao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return "invalid user";
    }

    //inserting a user and returning userId
    public int insertUser(User user) {
        System.out.println("In the insert user method!!!!");
        int userId = 0;

        try {
            String query1 = "insert into users(username,Password,roleId) values(?,?,2)";
            PreparedStatement statement = connection.prepareStatement(query1);

            statement.setString(1, user.getUsername());
            statement.setString(2, user.getPassword());
            statement.executeUpdate();
            String query2 = "select max(userId) from users";
            PreparedStatement statement2 = connection.prepareStatement(query2);
            statement2.executeQuery(query2);
            ResultSet res1 = statement2.executeQuery();
            if (res1 != null) {
                while (res1.next()) {
                    //  User user1 = new User();
                    userId = res1.getInt(1);
                    // user.setUserId(1);
                }
                return userId;
            }
        } catch (SQLException ex) {
            Logger.getLogger(Dao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return userId;
    }

    public void addCourse(String cName, int profID) {

        try {
            String query = "insert into Course (coursename,profid) values(?,?)";
            // insert into Course (courseId,coursename,profid) values('SPL',5001);
            PreparedStatement statement = connection.prepareStatement(query);
            //statement.setInt(1,cID);
            statement.setString(1, cName);
            statement.setInt(2, profID);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(Dao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public void addProfessor(int depID, String pName) {
        //insert into Professor (profname,Deptid) values('Kim',1001);
        try {
            String query = "insert into Professor (profname,Deptid) values(?,?);";
            PreparedStatement statement = connection.prepareStatement(query);
            statement.setInt(2, depID);
            statement.setString(1, pName);
            statement.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(Dao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public List<Course> getCourses() {

        List courses = new ArrayList();
        System.out.println("In the viewCourses method:::::::");

        try {
            String query = "select courseId,coursename,profid  from Course";
            PreparedStatement statement = connection.prepareStatement(query);
            ResultSet res2 = statement.executeQuery();
            if (res2 != null) {
                while (res2.next()) {
                    Course course = new Course();
                    course.setCourseId(res2.getInt("courseId"));
                    course.setCoursename(res2.getString("coursename"));
                    course.setProfid(res2.getInt("profid"));
                    courses.add(course);

                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(Dao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return courses;
    }

    public List<Professor> getProfesssor() {

        List professorsList = new ArrayList();
        System.out.println("In the viewCourses method:::::::");

        try {
            String query = "select profID,profname,deptId from professor";
            PreparedStatement statement = connection.prepareStatement(query);
            ResultSet res2 = statement.executeQuery();
            if (res2 != null) {
                while (res2.next()) {
                    Professor professor = new Professor();
                    professor.setProfId(res2.getInt("profID"));
                    professor.setProfname(res2.getString("profname"));
                    professor.setDepID(res2.getInt("deptId"));
                    professorsList.add(professor);
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(Dao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return professorsList;
    }

    public User getUserDetails(int uid) {
        User user = new User();
        try {
            String query4 = "select userId,username,Password,roleId from users where userId=?";
            PreparedStatement statement = connection.prepareStatement(query4);
            statement.setInt(1, uid);
            ResultSet res4 = statement.executeQuery();
            //statement.setString(1,"uid");
            if (res4 != null) {
                while (res4.next()) {

                    user.setUserId(uid);
                    user.setUsername(res4.getString("username"));
                    user.setPassword(res4.getString("Password"));
                    user.setRoleId(res4.getString("roleId"));

                }
            }

        } catch (SQLException ex) {
            Logger.getLogger(Dao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return user;
    }

    public void stuAddCourses(String[] selCourses, int stuID) {
        System.out.println("enterd student iD is "+stuID);
        try {
            String query4 = "insert into Stud_course values (?,?)";
            for (int i = 0; i < selCourses.length; i++) {
                PreparedStatement statement = connection.prepareStatement(query4);
                statement.setInt(1, stuID);
                statement.setInt(2, Integer.parseInt(selCourses[i]));
                statement.executeUpdate();
                System.out.println("Entered values are ================"+selCourses[i]);
            }
           // ResultSet res4 = statement.executeQuery();
        } catch (SQLException ex) {
            Logger.getLogger(Dao.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    public List<Course> getCourses(int id) {
       
    List courses = new ArrayList();
        System.out.println("In the myCourses method:::::::");

        try {
            String query = "select courseId,coursename,profid  from Course ";
            PreparedStatement statement = connection.prepareStatement(query);
            ResultSet res2 = statement.executeQuery();
            if (res2 != null) {
                while (res2.next()) {
                    Course course = new Course();
                    course.setCourseId(res2.getInt("courseId"));
                    course.setCoursename(res2.getString("coursename"));
                    course.setProfid(res2.getInt("profid"));
                    courses.add(course);
                }
            }
        } catch (SQLException ex) {
            Logger.getLogger(Dao.class.getName()).log(Level.SEVERE, null, ex);
        }
        return courses;
    
    
    
    }

}
