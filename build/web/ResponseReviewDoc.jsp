<%@page import="java.util.ArrayList"%>
<%@page import="Bean.AskQuestionBean"%>
<%@page import="DB.DAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Index Page</title>
        <jsp:include page="commonbootstrap.jsp" ></jsp:include>
    </head>
    <body  style="background-size: cover;background-image: url(images/backgr.jpg)">
    <jsp:include page="lawyermenu.jsp"></jsp:include>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <form action="#" style="margin-top: 100px;" method="post">
                    <div class="form-group">
                        
                        <div class="row justify-content-center align-items-center">
                            <textarea name="lawerresp" style="height: 100px;" class="form-control" id="response" placeholder="Enter Response"></textarea>
                            
                        </div><br><br><br>
                        <div class="row justify-content-center align-items-center">  
                            <button type="submit" class="row justify-content-center align-items-center btn btn-primary">Submit</button>
                        </div>
                        <br>
                    </div>
                   </form>   
                </div>
                <%
                    String method=request.getMethod();
                    //out.println(method);
                    if(method.equalsIgnoreCase("post"))
                    {   
                        String lawerresp=request.getParameter("lawerresp");
                        int tlid=Integer.parseInt(request.getParameter("tlid"));
                        String laweremail=request.getParameter("laweremail");
                        String useremail=request.getParameter("useremail");
                        out.println(tlid);
                        out.println(lawerresp);
                        out.println(laweremail);
                        out.println(useremail);
                        DAO dao=new DAO();
                        if(dao.responseToReviewDoc(tlid,laweremail,useremail,lawerresp)==true)
                        {   response.sendRedirect("ViewReviewDocs.jsp?msg=Response Sent Successfully");
                        }
                        else
                        {   response.sendRedirect("ViewReviewDocs.jsp?msg=Response Sent Failed");
                        }
                    }
                %>
            </div>
        </div>
</body>
</html>
