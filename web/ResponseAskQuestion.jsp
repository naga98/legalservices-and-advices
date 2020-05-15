<%@page import="java.sql.ResultSet"%>
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
    <body  style="background-size: cover;background-image: url(images/backgr.jpg)">
    <jsp:include page="UserMenu.jsp"></jsp:include>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <%
                        String userid=(String)session.getAttribute("userid");
                        //out.println(userid);
                        DAO dao=new DAO();
                        ResultSet rs=dao.viewQuestions(userid);
                        out.println("<table class=table table-dark table-hover border=1px; style='margin-top:100px;width=1000px;'>");
                        out.println("<thead><th>slno</th><th>id</th><th>Law</th><th>Title</th><th>Question</th></thead>");
                        int i=1;
                        while(rs.next())
                        {   out.println("<tr>");
                            out.println("<td>"+i+"</td>");
                            String qid=rs.getString("slno");
                            out.println("<td>"+qid+"</td>");
                            out.println("<td>"+rs.getString("law")+"</td>");
                            out.println("<td>"+rs.getString("title")+"</td>");
                            out.println("<td>"+rs.getString("question")+"</td>");
//                           out.println("<td>"+rs.getString("state")+"</td>");
//                           out.println("<td>"+rs.getString("city")+"</td>");
//                           out.println("<td>"+rs.getString("pincode")+"</td>");
                            out.println("<td><a href='ViewResponseOfQuestion.jsp?qid="+qid+"'>View Responses</a></td>");
                            out.println("</tr>");
                            i++;
                        }
                        /*ResultSet rs=dao.viewResponseAskQuestion(userid);
                        out.println("<table class=table table-dark table-hover border=1px; style='margin-top:100px;width=1000px;'>");
                        out.println("<thead><th>slno</th><th>id</th><th>LawerEmail</th><th>LawerName</th><th>Phone Number</th><th>Question</th><th>Response</th></thead>");
                        int i=1;
                        while(rs.next())
                        {
                           out.println("<tr>");
                           out.println("<td>"+i+"</td>");
                           out.println("<td>"+rs.getString("aqid")+"</td>");
                           out.println("<td>"+rs.getString("laweremail")+"</td>");
                           out.println("<td>"+rs.getString("FullName")+"</td>");
                           out.println("<td>"+rs.getString("Mobileno")+"</td>");
                           out.println("<td>"+rs.getString("question")+"</td>");
                           out.println("<td>"+rs.getString("response")+"</td>");
                           out.println("</tr>");
                           i++;
                        }*/
                    %>
                </div>
            </div>
        </div>
  
    
</body>
</html>