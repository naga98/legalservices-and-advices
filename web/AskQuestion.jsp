<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String userid=(String)session.getAttribute("userid");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Ask Question@Legal Services</title>
        <jsp:include page="commonbootstrap.jsp" ></jsp:include>
        <body  style="background-size: cover;background-image: url(images/backgr.jpg)">
        <jsp:include page="UserMenu.jsp"></jsp:include>
        <div class="row justify-content-center align-items-center">
            <h1 style="color:white; "><strong>Ask Multiple Lawyers</strong></h1>
       </div>
            <div class="row justify-content-center align-items-center">
            <div class="container" style="min-height: 500px;margin-left: -100px;">
                <form  action="AskQuestionServlet" >
                     <div class="form-group">
                         <input type="hidden" class="form-control" id="title" name="email" value="<%=userid%>" >
                    </div>
                    <div class="dropdown form-group ">
                        <select name="law"  class="form-control" id="wgtmsr" style="width: 1110px" >
                            <option value="FamilyLaw">Family Law</option>
                            <option value="ProportyLaw">Property Law</option>
                            <option value="CivilLaw">Civil Law</option>
                            <option value="CriminalLaw">Criminal Law</option>
                            <option value="BussinessLaw">Business Law</option>
                        </select>    
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" id="title" placeholder="Question Tile" name="title">
                    </div>
                    <div class="form-group green-border-focus">
                        <textarea class="form-control" id="question" rows="10" placeholder="Type your question Here" name="question"></textarea>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" id="state" placeholder="state" name="state" style="width: 300px">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" id="city" placeholder="city" name="city" style="width: 300px">
                    </div>


                    <div class="form-group">
                        <input type="text" class="form-control" id="pincode" placeholder="Pincode" name="pincode" style="width: 300px">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" id="phone" placeholder="Phone" name="phone" style="width: 300px">
                    </div>
                    <div class="form-group form-check" style="color: white;">
                        <label class="form-check-label">
                            <input class="form-check-input" type="checkbox" name="remember" > I request lawyers to content me via phone/e-mail
                        </label>
                    </div>

                    <button type="submit" class="btn btn-primary">Submit</button>
                </form>
            </div>
            <br>
        </div>
    </body>
<jsp:include page="homefooter.jsp" ></jsp:include>
</html>





