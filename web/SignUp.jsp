<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
          <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:include page="commonbootstrap.jsp" ></jsp:include>
        </head>
        
            
        <body  style="background-size: cover;background-image: url(images/backgr.jpg)">
        <jsp:include page="homemenu.jsp"></jsp:include>
            <div class="row justify-content-center align-items-center">
                <h1><strong>Lawyer Registration</strong></h1><br><br><br>
            </div>
            <div class="container">
                <form action="Signup">
                    <div class="form-group">
                        
                        <div class="row justify-content-center align-items-center">
                            <input type="text" class="form-control" id="FullName" placeholder="FullName" name="FullName" style="width: 300px" required="" ><br><br>
                        </div>
                        <div class="row justify-content-center align-items-center">
                            <input type="text" class="form-control" id="Mobileno" placeholder="Mobileno" name="Mobileno" style="width: 300px"><br><br>
                        </div>
                        <div class="row justify-content-center align-items-center">
                            <input type="email" class="form-control" id="EmailId" placeholder="EmailId" name="EmailId" style="width: 300px" required="" ><br><br>
                        </div>
                        <div class="row justify-content-center align-items-center">
                            <input type="password" class="form-control" id="Password" placeholder="Password" name="Password" style="width: 300px" required=""><br><br>
                        </div>
                        <div class="dropdown form-group row justify-content-center align-items-center.">

                            <select name="AreaofLaw"  class="form-control" id="wgtmsr" style="width: 300px" >
                                <option value="select">Select</option>
                            <option value="Family Law">Family Law</option>
                            <option value="Property Law">Property Law</option>
                            <option value="Civil Law">Civil Law</option>
                            <option value="Criminal Law">Criminal Law</option>
                            <option value="Business Law">Business Law</option>
                        </select>    
                    </div>
                        <div class="row justify-content-center align-items-center">
                            <input type="text" class="form-control" id="Experience" placeholder="Experience" name="Experience" style="width: 300px" >
                        </div>
                        <div class="row justify-content-center align-items-center">
                            <input type="text" class="form-control" id="City" placeholder="City" name="City" style="width: 300px" required=""><br><br>
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
                                <input class="form-check-input" type="checkbox" name="remember"> &nbsp;&nbsp;&nbsp;&nbsp;I Agree To Terms and Conditions<br><br>
                            </label>
                        </div>
                        <div class="row justify-content-center align-items-center">  
                            <button type="submit" class="row justify-content-center align-items-center btn btn-primary">Register</button>
                        </div>
                        <br>
                    </div>
                </form>
            </div>
        </body>
    <jsp:include page="homefooter.jsp" ></jsp:include>
</html>