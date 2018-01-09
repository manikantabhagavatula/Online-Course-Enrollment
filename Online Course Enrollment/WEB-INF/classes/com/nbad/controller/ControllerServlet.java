/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nbad.controller;

import com.nbad.courseregistration.User;
import com.nbad.dao.Dao;
import java.io.IOException;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.nbad.courseregistration.*;
import java.util.*;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Mani
 */
//@WebServlet(name = "ServletExample", urlPatterns = {"/servletExample"})
public class ControllerServlet extends HttpServlet {
    int id;
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = new User();

        System.out.println("In the do post meth od of the Contrroller servlet!!");
        Dao dao2 = new Dao();
        String url = request.getParameter("url");
        System.out.println("entered url========================" + url);
        if (url.equals("reg")) {
            System.out.println("In the reg method.....");
            getServletContext()
                    .getRequestDispatcher("/register.jsp")
                    .forward(request, response);
        } else if (url.equals("login")) {
            System.out.println("In the login method.....");
            String userID = request.getParameter("loginId");
            id = Integer.parseInt(userID);
            System.out.println("================================"+id);
            String password = request.getParameter("password");
            Dao dao = new Dao();
            //String test = dao.validateUser(userName, password);

            user.setUsername(userID);
            user.setPassword(password);

            String validation = dao.validateUser(userID, password);
            System.out.println("Validation message========================================" + validation);
            if (validation.equals("invalid user")) {
                getServletContext()
                        .getRequestDispatcher("/failure.jsp")
                        .forward(request, response);
            } else if (validation.equals("Wrong Password")) {
                getServletContext()
                        .getRequestDispatcher("/index.jsp")
                        .forward(request, response);

            } else if (validation.equals("admin")) {
                HttpSession session = request.getSession();
                session.setAttribute("user", user.getUsername());
                getServletContext()
                        .getRequestDispatcher("/admin.jsp")
                        .forward(request, response);

            } else if (validation.equals("student")) {
                HttpSession session = request.getSession();
                session.setAttribute("user", user.getUsername());
                getServletContext()
                        .getRequestDispatcher("/student.jsp")
                        .forward(request, response);

            } else {
                getServletContext()
                        .getRequestDispatcher("/index.jsp")
                        .forward(request, response);

            }
        } else if (url.equals("addCourses")) {
            System.out.println("in importantttttttttttttttttttt          addcour---------------"+id);
            System.out.println("In controller servlet trying to add course");
            List<Professor> professorsList = new ArrayList<>();
            professorsList = dao2.getProfesssor();
            request.setAttribute("professorList", professorsList);
            getServletContext()
                    .getRequestDispatcher("/course.jsp")
                    .forward(request, response);

        } else if (url.equals("addProfessor")) {
            System.out.println("In controller servlet trying to add Professor");

            getServletContext()
                    .getRequestDispatcher("/professor.jsp")
                    .forward(request, response);
        } else if (url.equals("viewCourses")) {
            System.out.println("In the view courses method of controller servlet from admin page!!");
            List<Course> courses = new ArrayList<Course>();
            courses = dao2.getCourses();
            request.setAttribute("coursesList", courses);
            request.getServletContext().getRequestDispatcher("/viewcourse.jsp").forward(request, response);
System.out.println("in addcour---------------"+id);
        } else if (url.equals("addCourse2")) {

            //int courseID=Integer.parseInt(request.getParameter("courseId"));
            String courseName = request.getParameter("courseName");
            int profID = Integer.parseInt(request.getParameter("profID"));

            Course course = new Course();

            // course.setCourseId(courseID);
            course.setCoursename(courseName);
            course.setProfid(profID);

            dao2.addCourse(courseName, profID);

            getServletContext()
                    .getRequestDispatcher("/success.jsp")
                    .forward(request, response);
System.out.println("in addcour---------------"+id);
        } else if (url.equals("addprofessor")) {
            String professorName = request.getParameter("professorName");
            int deptId = Integer.parseInt(request.getParameter("dept Id"));
            dao2.addProfessor(deptId, professorName);
            getServletContext()
                    .getRequestDispatcher("/success.jsp")
                    .forward(request, response);
            System.out.println("in addcour---------------"+id);
        } else if (url.equals("viewCour")) {
            System.out.println("In the view courses method of controller servlet from student page!!");
            List<Course> courses = new ArrayList<Course>();
            courses = dao2.getCourses();
            request.setAttribute("coursesList", courses);
            request.getServletContext().getRequestDispatcher("/viewcourse.jsp").forward(request, response);
        System.out.println("in addcour---------------"+id);
        } 
        
        
        
        
        else if (url.equals("addcour")) {
            System.out.println("in addcour---------------"+id);
            System.out.println("In the view courses method of controller servlet from student page!!");
            List<Course> courses = new ArrayList<Course>();
            courses = dao2.getCourses();
            request.setAttribute("coursesList", courses);
            request.getServletContext().getRequestDispatcher("/addcourses.jsp").forward(request, response);
        } else if (url.equals("stuAddCourse")) {

            String[] selCourses = request.getParameterValues("selCOurses");
            dao2.stuAddCourses(selCourses, id);
            //request.setAttribute("coursesList",courses);
            request.getServletContext().getRequestDispatcher("/success.jsp").forward(request, response);
        }

        /*Dao dao = new Dao();
             String test=dao.validateUser("sai", "pass");
             User user1 = new User();
             user1.setUsername("rudra");
             user1.setPassword("efddsv");
             if(dao.insertUser(user1)!=0)
             System.out.println("New User id created with user ID===================="+dao.insertUser(user1)); 
             else
                 System.out.println("unable to create a new user");*/
    }

}
