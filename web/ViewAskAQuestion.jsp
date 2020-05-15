<%@page import="java.util.ArrayList"%>
<%@page import="Bean.AskQuestionBean"%>
<%@page import="DB.DAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
String userid=(String)session.getAttribute("userid");

%>

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
                    <%
                        DAO dao=new DAO();
                        ArrayList<AskQuestionBean> aq=dao.getViewAskAQuestion();
                    out.println("<table class=table table-dark table-hover border=1px; style=margin-top:100px;>");
                    out.println("<thead>");
                    out.println("<th>slno</th>");
                    out.println("<th>User email</th>");
                    out.println("<th>Area of Law</th>");
                    out.println("<th>title</th>");
                    out.println("<th>question</th>");
                    out.println("<th>state</th>");
                    out.println("<th>city</th>");
                    out.println("<th>pincode</th>");
                    out.println("<th>phone</th>");
                    out.println("</thead>");
                        for(AskQuestionBean askquestion:aq)
                        {
                          out.println("<tbody><tr>");
                          out.println("<td>"+askquestion.getSlno()+"</td>");
                          out.println("<td>"+askquestion.getEmail()+"</td>");
                          out.println("<td>"+askquestion.getLaw()+"</td>");
                          out.println("<td>"+askquestion.getTitle()+"</td>");
                          out.println("<td>"+askquestion.getQuestion()+"</td>");
                          out.println("<td>"+askquestion.getState()+"</td>");
                          out.println("<td>"+askquestion.getCity()+"</td>");
                          out.println("<td>"+askquestion.getPincode()+"</td>");
                          out.println("<td>"+askquestion.getPhone()+"</td>");
                           out.println("<td><a href='ResponseToUserFromLawer.jsp?aqid="+askquestion.getSlno()+"&useremail="+askquestion.getEmail()+"&laweremail="+userid+"'>Response</a></td>");
                          out.println("</tr></tbody>");
                        }
                    %>
                </div>
            </div>
        </div>
  
    
</body>
</html>