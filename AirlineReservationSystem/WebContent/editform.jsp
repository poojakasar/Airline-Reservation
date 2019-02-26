<!DOCTYPE html>  
<html>  
<head>  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<title>Edit Form</title> 
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css" href="style.css"> 
</head> 
 
<body>  
<%@page import="repository.JSTLFlightDAO,uEntities.JSTLFlight"%>  
  
<%  
String id=request.getParameter("id");  
JSTLFlight f=JSTLFlightDAO.getRecordById(Integer.parseInt(id));  
%>  

 <br>
<div class="container">
    
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="images\1.jpg" style="width:100%;">
      </div>

      <div class="item">
        <img src="images\2.jpg" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="images\3.jpg"style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>
     
<br>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class="active"><a href="BookFlight.html">Book Flight</a></li>
        <li><a href="ViewBooking.html">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp View Booking</a></li>
        <li><a href="ViewDetails.html">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp View Details</a></li>
        <li><a href="Home.html">&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp Logout</a></li>
      </ul>
     
    </div>
  </div>
</nav>
  <div id="page">
 <div id="content">
<h1>Edit Form</h1>  
<form action="edituser.jsp" method="post">  
<input type="hidden" name="flightId" value="<%=f.getFlightId() %>"/>  
<table>  

 <tr>
   <td> <label for="Airlines_Id">Airline Id</label></td>
    <td><input type="text" name="airlineId" value="<%= f.getAirlineId()%>"/></td> 
   
    <td> <label for="Airlines">Airline Name</label></td>
     <td><input type="text" name="airlineName" value="<%= f.getAirlineName()%>"/></td> 
   </tr>
   
   
   <tr>
  <td> <label for="From Location">From Location</label></td>
    <td><input type="text" name="from" value="<%= f.getFrom()%>"/></td>
 </td>
   
   
   <td> <label for="To Location">To Location</label></td>
   <td><input type="text" name="to" value="<%= f.getTo()%>"/></td>
 </td>
   
</tr>

<tr>
<td> <label for="DEparture">Departure:</label></td>
  
<td><input type="text" name="departure" value="<%= f.getDeparture()%>"/></td>

<td> <label for="Arrival">Arrival:</label></td>

<td><input type="text" name="arrival" value="<%= f.getArrival()%>"/></td>
 
</tr>


<tr>
    <td> <label for="Price">Price</label></td>
    <td><input type="text" name="price" value="<%= f.getPrice()%>"/></td> 
  </tr>
 
  <tr>

<tr><td colspan="2"><input type="submit" value="Edit User"/></td></tr>

 
</table>  

</form>  
  </div>
  </div>
  </br>
  <footer>
<center>
<small>
&copy; Aproject by  Pooja Aman Ritu Smita PARS.co 2019,All Rights Reserved

</small>
</center>
</footer>
</br>
</body>  
</html>  
