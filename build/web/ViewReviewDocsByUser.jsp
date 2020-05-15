<%@page import="sr.ReviewDoc"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Bean.TalkToaLawyerBean"%>
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
    <jsp:include page="UserMenu.jsp"></jsp:include>
        <div class="container">
            <div class="row" style="margin-left: -150px;">
                <div class="col-md-12">
                    <%
                        String userid=(String)session.getAttribute("userid");
                        //out.println(userid);
                        DAO dao=new DAO();
                        ArrayList<ReviewDoc> tl=dao.getReviewDocs(userid);
                        out.println("<table class=table table-dark table-hover border=1px; style=margin-top:100px;>");
                        out.println("<thead>");
                        out.println("<th>slno</th>");
                        out.println("<th>lawer email</th>");
                        out.println("<th>Area of Law</th>");
                        out.println("<th>title</th>");
                        out.println("<th>Question</th>");
                        out.println("<th>state</th>");
                        out.println("<th>city</th>");
                        out.println("<th>pincode</th>");
                        out.println("<th>phone</th>");
                        out.println("<th>user emil</th>");
                        out.println("<th>user name</th>");
                        out.println("<th>Document-1</th>");
                        out.println("<th>Document-2</th>");
                        out.println("<th>Click For Response</th>");
                        
                        out.println("</thead>");
                        for(ReviewDoc toaLawyerBean:tl)
                        {
                          out.println("<tbody><tr>");
                          out.println("<td>"+toaLawyerBean.getSlno()+"</td>");
                          out.println("<td>"+toaLawyerBean.getToEmaild()+"</td>");
                          out.println("<td>"+toaLawyerBean.getLaw()+"</td>");
                          out.println("<td>"+toaLawyerBean.getTitle()+"</td>");
                          out.println("<td>"+toaLawyerBean.getQuestion()+"</td>");
                          out.println("<td>"+toaLawyerBean.getState()+"</td>");
                          out.println("<td>"+toaLawyerBean.getCity()+"</td>");
                          out.println("<td>"+toaLawyerBean.getPincode()+"</td>");
                          out.println("<td>"+toaLawyerBean.getPhone()+"</td>");
                          out.println("<td>"+toaLawyerBean.getFromEmailId()+"</td>");
                          out.println("<td>"+toaLawyerBean.getUsername()+"</td>");
                          out.println("<td><a href='databaseimages/"+toaLawyerBean.getDoc1()+"'><img src='databaseimages/"+toaLawyerBean.getDoc1()+"' width='100px' height='100px'></a></td>");
                          out.println("<td><a href='databaseimages/"+toaLawyerBean.getDoc2()+"'><img src='databaseimages/"+toaLawyerBean.getDoc2()+"' width='100px' height='100px'></a></td>");
                          out.println("<td><a href='ViewResponseOfDocs.jsp?tlid="+toaLawyerBean.getSlno()+"&laweremail="+toaLawyerBean.getToEmaild()+"&useremail="+toaLawyerBean.getFromEmailId()+"'>Response</a></td>");
                          out.println("</tr></tbody>");
                        }

                    %>
                </div>
            </div>
        </div>
  
    
</body>
</html>