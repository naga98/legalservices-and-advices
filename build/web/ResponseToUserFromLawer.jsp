<%@page import="java.util.ArrayList"%>
<%@page import="Bean.AskQuestionBean"%>
<%@page import="DB.DAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>


<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Index Page</title>
        <jsp:include page="commonbootstrap.jsp" ></jsp:include>
    </head>
    <body>
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
                        int aqid=Integer.parseInt(request.getParameter("aqid"));
                        String useremail=request.getParameter("useremail");
                        String laweremail=request.getParameter("laweremail");

                        out.println(aqid);
                        out.println(useremail);
                        out.println(laweremail);
                        out.println(lawerresp);
                        
                        DAO dao=new DAO();
                        if(dao.responseaskquestion(aqid,laweremail,useremail,lawerresp)==true)
                        {
                            response.sendRedirect("ViewAskAQuestion.jsp?msg=response sended");
                        }
                        else
                        {
                             response.sendRedirect("ViewAskAQuestion.jsp?msg=response not sended");
                        }
                    }
                %>
            </div>
        </div>
</body>
</html>