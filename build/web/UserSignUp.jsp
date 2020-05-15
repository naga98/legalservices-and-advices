<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Registration</title>
        <jsp:include page="commonbootstrap.jsp" ></jsp:include>
    </head>
    <body  style="background-size: cover;background-image: url(images/backgr.jpg)">
        <jsp:include page="homemenu.jsp"></jsp:include>
        <%
            String msg=request.getParameter("msg");
            if(msg==null)
                 msg="";
        %>
        <h1 align='center'><strong><%=msg%></strong></h1>
        <div class="row justify-content-center align-items-center">
            
            <h1><strong>User Registration</strong></h1>
        </div>
        
      <div class="container">
      <form action="UserSignupServelet">
      <div class="form-group">
          <div class="row justify-content-center align-items-center">
              <input type="text" class="form-control" id="FullName" placeholder="FullName" name="FullName" style="width: 300px" required=""><br><br>
          </div>
           <div class="row justify-content-center align-items-center">
              <input type="text" class="form-control" id="Mobileno" placeholder="Mobileno" name="Mobileno" style="width: 300px"><br><br>
         </div>
           <div class="row justify-content-center align-items-center">
              <input type="email" class="form-control" id="EmailId" placeholder="EmailId" name="EmailId" style="width: 300px" required="" ><br><br>
         </div>
           <div class="row justify-content-center align-items-center">
              <input type="password" class="form-control" id="Password" placeholder="Password" name="Password" style="width: 300px"><br><br>
         </div>
            <div class="row justify-content-center align-items-center">
              <input type="text" class="form-control" id="City" placeholder="City" name="City" style="width: 300px"><br><br>
         </div>
           
           <div class="row justify-content-center align-items-center">
               <textarea class="form-control" id="Address" name="Address" placeholder="Address" style="width: 300px"></textarea><br><br>
         </div>
          <div>
              <div class="row justify-content-center align-items-center">
         <table>
             <tr>
                 <td><input type="radio" name="gender" value="male"> Male<br></td>
                 <td> <input type="radio" name="gender" value="female"> Female<br></td><br><br>
             </tr>
         </table></div></div>
   
    <div class=" row justify-content-center align-items-center">
      <label class="form-check-label">
          <input class="form-check-input" type="checkbox" name="remember" required="" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; I Agree To Terms and Conditions<br><br>
      </label>
    </div>
         
          <div class="row justify-content-center align-items-center">  
    <button type="submit" class="row justify-content-center align-items-center btn btn-primary">Register</button>
          </div>
      </div>
                </form>
            </div>
        </body>

    <jsp:include page="homefooter.jsp" ></jsp:include>
</html>



 

