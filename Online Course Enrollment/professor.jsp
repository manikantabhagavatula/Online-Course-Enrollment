
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
       
           <h3>AVAILABLE PROFESSORS THIS SEMESTER</h3>
       
       </div>
      
       <table class="table table-striped">
  <thead>
    <tr>
      <th>Professor Name</th>
        <th>Department ID</th>
      </tr>
  </thead>
  <tbody>
      
       
    <tr>
        <td>
            <input type="text" class="form-control" id="loginId" name="professorName" placeholder="professorName" style="width:300px">
        </td>
        <td>
            <select name="dept Id">        
            <option value="1001">1001</option>
            <option value="1002">1002</option>
    </select>
        </td>
      </tr>
       
  </tbody>
</table>
           <div align="center">
       <button type="submit" class="btn btn-success" name="url" value="addprofessor">Add Professor</button>
           <button type="button" class="btn btn-success" value="back" onclick="history.go(-1);" >Back</button>
       </div>
           
           
       </form>
       
</div>
    <script src = "bootstrap/js/jquery.js"></script>
            <script src="bootstrap/js/bootstrap.min.js"></script>
   

</body>
</html>