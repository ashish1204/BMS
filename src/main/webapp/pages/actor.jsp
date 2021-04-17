<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  <!-- JSTL LIBRARY -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Actor</title>
</head>
<body>


<div class='container-fluid text-primary display-3' id="title">
<div>
<form action="/">
<button type="submit" class="btn btn-primary"">home</button>
</form>
</div>
<div><center>
	Actors
	</center>
</div>
</div>
<br><br><br><br>
<br>
<div class="row">
	<div class="col-lg-3"></div>
  <div class="col-lg-3 text-dark display-5">
  <a class="text-dark" href="/goToAddActor">Add Actor</a>
  </div>
  <div class="col-lg-3 text-dark display-5">
  <a class="text-dark" href="#" onclick="removeFilmVisible(); return false;" >Remove Actor</a>
  </div>
  <div class="col-lg-3"></div>
  
</div>

<div class="row" id="removeDivActor" style="display:none">
<div class="col-lg-6"></div>
<div class="col-lg-6">
<form action="/removeActor" class="form-group">
  <label for="actorRemoveId">Id:</label>
  <input type="text" class="form-control" id="actorRemoveId" name="actorId">
  <button type="submit" class="btn btn-primary" >Remove</button>
  
</form>
</div>
</div>




<div class="table-responsive">
    <table class="table table-bordered">
      <thead>
        <tr>
          <th>#</th>
          <th>Name</th>
          <th>DOB</th>
          <th>Popularity</th>
        </tr>
      </thead>
      <tbody>
        <c:forEach var="actor" items="${actors}"> 
                <tr>
        
			<td><c:out value="${actor.actorId}"/></td>
			<td><c:out value="${actor.actorName}"/></td>
			<td><c:out value="${actor.dob}"/></td>
			<td><c:out value="${actor.popularity}"/></td>
        </tr>

		</c:forEach>
 			        
      </tbody>
    </table>
  </div>

</body>
</html>