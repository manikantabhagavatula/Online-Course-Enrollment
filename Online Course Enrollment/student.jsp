<%-- 
    Document   : student
    Created on : April 27, 2017, 4:48:22 PM
    Author     : Mani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <style>
   body { padding-top: 70px;  background-repeat: no-repeat; background-position: right}
    </style>
</head>
<body>
   
    <div class="container">
  <form action="coursereg" method="post">
      
      
      
      <div class="form-group row" align="center">
      <div class="offset-sm-2 col-sm-10">
          <button type="submit" name="url" class="btn btn-primary" value="viewCour">View Courses</button>
      </div>
    </div>   
          <div class="form-group row" align="center">
      <div class="offset-sm-2 col-sm-10">
       <button type="submit" name="url" class="btn btn-primary" value="addcour">Add Course</button>
      </div>
    </div>
      <div class="form-group row" align="center">
      <div class="offset-sm-2 col-sm-10">
       <button type="submit" name="url" class="btn btn-primary" value="mycour">My Courses</button>
      </div>
    </div>
  </form>
</div>  
<script src = "bootstrap/js/jquery.js"></script>
            <script src="bootstrap/js/bootstrap.min.js"></script>
    
</body>
</html>
