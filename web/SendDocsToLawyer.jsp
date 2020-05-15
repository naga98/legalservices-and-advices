<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <jsp:include page="commonbootstrap.jsp" ></jsp:include>
        </head>        
        <body  style="background-size: cover;background-image: url(images/backgr.jpg)">
        <jsp:include page="UserMenu.jsp"></jsp:include>
            <!--            <h1><strong>Ask Multiple Lawyers</strong></h1>-->
            <div class="row justify-content-center align-items-center">
                <h2><strong>Send Docs For Reviews</strong></h2>
            </div>
            <div class="row justify-content-center align-items-center">
            <%

                String law = request.getParameter("lawyerId");
                if (law == null) {
                    law = "";
                }
                //out.println(law);
                String userid = (String) session.getAttribute("userid");
            %>
            <div class="container" style="min-height: 500px;margin-left: -100px;">
                <form action="ReviewDocs.jsp">
                    <div class="form-group">
                        <input type="text" class="form-control" id="EmailId" value="<%=law%>" placeholder="ToEmailid" name="toEmaild" style="width: 300px">
                    </div>
                    <div class="dropdown form-group ">

                        <select name="law"  class="form-control" id="law" style="width: 1110px" >

                            <option value="Family Law">Family Law</option>
                            <option value="Property Law">Property Law</option>
                            <option value="Civil Law">Civil Law</option>
                            <option value="Criminal Law">Criminal Law</option>
                            <option value="Business Law">Business Law</option>
                        </select>    
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" id="title" placeholder="Question Tile" name="title">
                    </div>
                    <div class="form-group green-border-focus">
                        <textarea class="form-control" id="question" name="question" rows="10" placeholder="Type your question Here"></textarea>
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" id="state" placeholder="State" name="state" style="width: 300px">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" id="city" placeholder="City" name="city" style="width: 300px">
                    </div>


                    <div class="form-group">
                        <input type="text" class="form-control" id="pincode" placeholder="Pincode" name="pincode" style="width: 300px">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" id="phone" placeholder="Phone" name="phone" style="width: 300px">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" id="EmailId" value="<%=userid%>" placeholder="FromEmailid" name="fromEmailId" style="width: 300px">
                    </div>
                    <div class="form-group">
                        <input type="text" class="form-control" id="username" placeholder="User Name" name="username" style="width: 300px">
                    </div>

                    <div class="form-group">
                        <input type="file" id="sign" class="form-control"  name="doc1" onchange="performAjaxSubmit()" style="width: 300px"><img id="resp" style="width:50px;"><b style="font-weight: bold;font-size: 18px; color: white;" id="resp2"></b>
                    </div>
                    <div class="form-group">
                        <input type="file" id="sign2"  class="form-control"  name="doc2" onchange="performAjaxSubmit2()" style="width: 300px"><img id="resp3" style="width:50px;"><b style="font-weight: bold;font-size: 18px; color: white;" id="resp4"></b>
                    </div>

                    <div class="consultation-price" > <b style="color:white">Total price:</b> <span class="price-value">Rs. 1,000</span></div>
                    <br>

                    <div class="form-group form-check" style="color:white;">
                        <label class="form-check-label">
                            <input class="form-check-input" type="checkbox" name="remember"> I request lawyers to contect me via phone/e-mail
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


<style>
    .consultation-price {
        font-size: 24px;
        line-height: 20px;
    }
    .question-price .price-value, .consultation-price .price-value {
        margin-left: 4px;
        color: #383;
        font-weight: bold;
    }
</style>


