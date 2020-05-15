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
    <jsp:include page="lawyermenu.jsp"></jsp:include>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <%
                        String userid=(String)session.getAttribute("userid");
                        //out.println(userid);
                        DAO dao=new DAO();
                         ArrayList<TalkToaLawyerBean> tl=dao.getViewTalkToALawer(userid);
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
                        out.println("</thead>");
                        for(TalkToaLawyerBean toaLawyerBean:tl)
                        {
                          out.println("<tbody><tr>");
                          out.println("<td>"+toaLawyerBean.getSlno()+"</td>");
                          out.println("<td>"+toaLawyerBean.getToEmailid()+"</td>");
                          out.println("<td>"+toaLawyerBean.getLaw()+"</td>");
                          out.println("<td>"+toaLawyerBean.getTitle()+"</td>");
                          out.println("<td>"+toaLawyerBean.getQuestion()+"</td>");
                          out.println("<td>"+toaLawyerBean.getState()+"</td>");
                          out.println("<td>"+toaLawyerBean.getCity()+"</td>");
                          out.println("<td>"+toaLawyerBean.getPincode()+"</td>");
                          out.println("<td>"+toaLawyerBean.getPhone()+"</td>");
                          out.println("<td>"+toaLawyerBean.getFromEmailid()+"</td>");
                          out.println("<td>"+toaLawyerBean.getUsername()+"</td>");
                          out.println("<td><a href='ResponseTalkToALawer.jsp?tlid="+toaLawyerBean.getSlno()+"&laweremail="+toaLawyerBean.getToEmailid()+"&useremail="+toaLawyerBean.getFromEmailid()+"'>Response</a></td>");
                          out.println("</tr></tbody>");
                        }

                    %>
                </div>
            </div>
        </div>
  
    
</body>
</html>