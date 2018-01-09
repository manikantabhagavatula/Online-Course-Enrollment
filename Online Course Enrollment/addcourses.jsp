<%-- 
    Document   : viewcourse
    Created on : April 27, 2017, 5:18:22 PM
    Author     : Mani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <style>
    body { padding-top: 70px;}
    </style>
</head>
<body>
   <div class="container"> 
       <form action="coursereg" method="post">
       <div>
       
           <h3>AVAILABLE COURSES THIS SEMESTER</h3>
       
       </div>
       
       <table class="table table-striped">
  <thead>
    <tr>
      <th>Course Id</th>
      <th>Course Name</th>
        <th>Professor ID</th>
        <th>#</th>
      </tr>
  </thead>
  <tbody>
      <c:forEach items = "${coursesList}" var = "course">
    <tr>
      <td>${course.courseId}</td>
      <td>${course.coursename}</td>
        <td>${course.profid} </td>
        <td> <input type="checkbox" name="selCOurses" value="${course.courseId}"> </td>
      </tr>
      </c:forEach>
  </tbody>
</table>
           <div align="center">
               
               
               
               
               <button type="submit" class="btn btn-success" name="url" value="stuAddCourse">Add</button>
               <button type="button" class="btn btn-success" value="back" onclick="history.go(-1);" >Back</button>
       </div>
      </form> 
</div>
    <script src = "bootstrap/js/jquery.js"></script>
            <script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>
