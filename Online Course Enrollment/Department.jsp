
<%-- 
    Document   : viewcourse
    Created on : April 27, 2017, 5:18:22 PM
    Author     : Mani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
       
           <h3>AVAILABLE DEPARTMENTS THIS SEMESTER</h3>
       
       </div>
       <table class="table table-striped">
  <thead>
    <tr>
      <th>Department Name</th>
        <th>Department ID</th>
      </tr>
  </thead>
  <tbody>
    <tr>
      <td>
        <select>        
            <option value="CS">Com Science</option>
            <option value="IT">Info Techn</option>
    </select>
        </td>
        <td>
        <select>        
            <option value="1001">1001</option>
            <option value="1002">1002</option>
    </select>
        </td>
      </tr>
  </tbody>
</table>
           <div align="center">
       <button type="submit" class="btn btn-success" value="add">Add</button>
           <button type="button" class="btn btn-success" value="back" onclick="history.go(-1);" >Back</button>
       </div>
           
           
       </form>
       
</div>
    <script src = "bootstrap/js/jquery.js"></script>
            <script src="bootstrap/js/bootstrap.min.js"></script>
    

</body>
</html>