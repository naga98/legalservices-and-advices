<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <jsp:include page="commonbootstrap.jsp" ></jsp:include>
    </head>
    <body  style="background-size: cover;background-image: url(images/backgr.jpg)">
        <jsp:include page="homemenu.jsp"></jsp:include>
        <div class="row justify-content-center align-items-center">
            <h1><strong>Login</strong></h1><br><br><br>
        </div>
<div class="container">
  <form action="LoginCheck">
      <div class="form-group">
          
          
           <div class="row justify-content-center align-items-center">
              <input type="email" class="form-control" id="EmailId" placeholder="EmailId" name="EmailId" style="width: 300px" required="" ><br><br>
         </div>
           <div class="row justify-content-center align-items-center">
              <input type="password" class="form-control" id="Password" placeholder="Password" name="Password" style="width: 300px"><br><br>
         </div>
            
         
          <div class="row justify-content-center align-items-center">  
    <button type="submit" class="row justify-content-center align-items-center btn btn-primary">Submit</button>
          </div>
      </div>
</form>
            <br>
    </div>
    </body>
    <br>
    <br>
    <br>
    <br>
    <jsp:include page="homefooter.jsp" ></jsp:include>
</html>