
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
      
      <th>Course Name</th>
        <th>P.ID P.Name Dep.ID</th>
      </tr>
  </thead>
  <tbody>
      
    <tr>
        
        <td>
        <input type="text" class="form-control" id="loginId" name="courseName" placeholder="courseName" style="width:300px">
        </td>
        
        <td>
            <select name="profID">   
            <!--<c:forEach items = "${professorList}" var = "professor">
            <option value="${professor.profId}">${professor.profId} ${professor.profname}  ${professor.Deptid} </option>
           </c:forEach>-->
             <option value="kim">1 Kim 1001</option>
            <option value="1002">2 Jim 1002</option>
    
    </select>
        </td>
        
    </tr>
      
  </tbody>
</table>
           <div align="center">
               <button type="submit" class="btn btn-success" name="url" value="addCourse2">Add</button>
           <button type="button" class="btn btn-success" value="back" onclick="history.go(-1);" >Back</button>
       </div>
      </form> 
</div>
    <script src = "bootstrap/js/jquery.js"></script>
            <script src="bootstrap/js/bootstrap.min.js"></script>
</body>
</html>