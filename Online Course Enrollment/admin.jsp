<html>
<head>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <style>
   body { padding-top: 70px; background-image: url(bootstrap/images/12345.jpg); background-repeat: no-repeat; background-position: right}
    </style>
</head>
<body>
   <p><strong>Hello ${sessionScope.user}</strong></p> 
    <div class="container">
  <form action="coursereg" method="post">
      
      
      
      <div class="form-group row" align="center">
      <div class="offset-sm-2 col-sm-10">
          <button type="submit" name="url" class="btn btn-primary" value="addCourses">Add Course</button>
      </div>
    </div>   
      
    <div class="form-group row" align="center">
      <div class="offset-sm-2 col-sm-10">
       <button type="submit" name="url" class="btn btn-primary" value="addProfessor">Add Professor</button>
      </div>
    </div>
      <div class="form-group row" align="center">
      <div class="offset-sm-2 col-sm-10">
       <button type="submit" name="url" class="btn btn-primary" value="viewCourses">View Courses</button>
      </div>
    </div>
  </form>
</div>  
<script src = "bootstrap/js/jquery.js"></script>
            <script src="bootstrap/js/bootstrap.min.js"></script>
    
</body>
</html>