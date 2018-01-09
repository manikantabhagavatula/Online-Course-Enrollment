<%-- 
    Document   : register
    Created on : April 27, 2017, 2:18:22 PM
    Author     : Mani
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <style>
    body { padding-top: 70px; background-repeat: no-repeat; background-position: right}
    </style>
</head>
<body>
   
    <div class="container">
  <form action="coursereg" method="post">
      
      <div class="form-group row">
      <label for="userName" class="col-sm-2 col-form-label">User Name</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="loginId" name="userName" placeholder="User Name" style="width:300px">
      </div>
    </div>
      
      <div class="form-group row">
      <label for="inputPassword3" class="col-sm-2 col-form-label">Password</label>
      <div class="col-sm-10">
        <input type="password" class="form-control" id="password" name="password" placeholder="Password" style="width:300px">
      </div>
    </div>     
      <div class="form-group row">
      <label class="col-sm-2 col-form-label">Role</label>
      <div class="col-sm-10">
        <input type="text" class="form-control" id="inputEmail3" name="role" placeholder="Student" disabled="disabled" style="width:300px">
      </div>
    </div>
      
    <div class="form-group row">
      <div class="offset-sm-2 col-sm-10">
          <button type="submit" name="url" class="btn btn-primary" value="insertUser">Sign Up</button>
      </div>
    </div>
  </form>
</div>  
<script src = "bootstrap/js/jquery.js"></script>
            <script src="bootstrap/js/bootstrap.min.js"></script>
    
</body>
</html>
