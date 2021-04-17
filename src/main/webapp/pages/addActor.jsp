<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
       <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  <!-- JSTL LIBRARY -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="https://cdn.jsdelivr.net/momentjs/2.14.1/moment.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/js/bootstrap-datetimepicker.min.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datetimepicker/4.17.37/css/bootstrap-datetimepicker.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css"> 
<html>
<head>
<meta charset="UTF-8">
<title>Add Actor</title>
<script>
  $(function () {
    $('#datetimepicker1').datetimepicker();
 });
</script>
</head>
<body>


<div class='container-fluid text-primary display-3' id="title">
<div>
<form action="/">
<button type="submit" class="btn btn-primary">home</button>
</form>
</div>
<div>
<center>
	Add Actor
	</center>
</div>
</div>
<div class='container-fluid  text-dark display-5'>
<div class="row">
<form action="addActor">
   <!--  <div class="form-group">
      <label for="filmId">Id:</label>
      <input type="text" class="form-control" id="filmId" placeholder="Enter id" name="filmId">
    </div> -->
    <div class="form-group">
      <label for="name">Name:</label>
      <input type="text" class="form-control" id="name" placeholder="Enter name" name="actorName">
    </div>
     <div class="form-group">
                  <label class="control-label">DOB:</label>
                  <div class='input-group date' id='datetimepicker1'>
                     <input type='text' class="form-control" name="dob" />
                     <span class="input-group-addon">
                     <span class="glyphicon glyphicon-calendar"></span>
                     </span>
                  </div>
               </div>
  <div class="form-group">
      <label for="popularity">Popularity:</label>
      <input type="text" class="form-control" id="popularity" placeholder="Enter popularity" name="popularity">
    </div>
 
    <button type="submit" class="btn btn-primary">Add Actor</button>
  </form>
  </div>
  </div>

</body>
</html>