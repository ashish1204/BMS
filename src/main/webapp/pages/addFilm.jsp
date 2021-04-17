<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
            <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  <!-- JSTL LIBRARY -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Film</title>
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
	Add Film
	</center>
</div>
</div>
<div class='container-fluid  text-dark display-5'>
<div class="row">
<form action="addFilm">
   <!--  <div class="form-group">
      <label for="filmId">Id:</label>
      <input type="text" class="form-control" id="filmId" placeholder="Enter id" name="filmId">
    </div> -->
    <div class="form-group">
      <label for="name">Name:</label>
      <input type="text" class="form-control" id="name" placeholder="Enter name" name="name">
    </div>
   <div class="form-group">
      <label for="genre">Genre:</label>
      <input type="text" class="form-control" id="genre" placeholder="Enter genre" name="genre">
    </div>
  <div class="form-group">
      <label for="length">Length:</label>
      <input type="text" class="form-control" id="length" placeholder="Enter length" name="length">
    </div>
 
    <button type="submit" class="btn btn-primary">Add Film</button>
  </form>
  </div>
  </div>
</body>
</body>
</html>