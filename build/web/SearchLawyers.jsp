 <%@page import="Bean.SignupBean"%>
<%@page import="java.util.ArrayList"%>
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
    <div class="container" style="min-height: 700px;">
            <div class="row">
                <div class="col-md-12">
                    <div class="row justify-content-center align-items-center">
                        <h1 style="color:black;">Search Lawyers</h1>
                    </div>
                    <form class="form-inline" method="post" action="SearchLawyers.jsp" >
                    <div class="form-group">
                        <label style="color:black;">Search By City and area of law</label><br>&nbsp;
                        <br>
                        <input type="text" required="" class="form-control" id="city" placeholder="Enter City" name="city" autocomplete="off"><br>&nbsp;
                       <select name="law"  class="form-control" id="law" >
                           <option value="select">-- Select Area --</option>
                            <option value="Family Law">Family Law</option>
                            <option value="Property Law">Property Law</option>
                            <option value="Civil Law">Civil Law</option>
                            <option value="Criminal Law">Criminal Law</option>
                            <option value="Bussiness Law">Business Law</option>
                        </select>    
&nbsp;
                        <button type="submit" class="btn btn-primary">&nbsp;&nbsp;Search&nbsp;&nbsp;</button>
                    </div>
                    </form>
                </div>
            </div>
        
        <div>.
            <%
                String method=request.getMethod();
                if(method.equalsIgnoreCase("post"))
                {
                    String law=request.getParameter("law");
                    String city=request.getParameter("city");
//                    out.println(law+":\t"+city);
                    
                    DAO dao=new DAO();
//                    out.println("Heys");
//                    String query="select * from lawyerregistration where AreaofLaw='"+law+"' and city like '%"+city+"%'";
//                    out.println(query);
                    ArrayList<SignupBean> lawyers=dao.getLawyers(law, city);
                    out.println("<table class=table table-dark table-hover border=1px;>");
                    out.println("<thead>");
                    out.println("<th>Name</th>");
                    out.println("<th>Email Id</th>");
                    out.println("<th>Area of Law</th>");
                    out.println("<th>City</th>");
                    out.println("<th>Action</th>");
                    out.println("</thead>");
                    
                    for(SignupBean lawyer:lawyers)
                    {
                        out.println("<tbody>");
                        out.println("<tr>");
                        out.println("<td>"+lawyer.getFullName() +"</td>");
                        out.println("<td>"+lawyer.getEmailId()+"</td>");
                        out.println("<td>"+lawyer.getAreaofLaw()+"</td>");
                        out.println("<td>"+lawyer.getCity()+"</td>");
                        out.println("<td><a href='TalktoaLawyer.jsp?lawyerId="+lawyer.getEmailId()+"'><button type='button' class='btn btn-primary'>Talk To Lawyer</button></a></td>");
                        out.println("</tbody>");
                        out.println("</tr>");
                        

                    }
                    out.println("</table>");
                }
            %>
        </div>
        
        </div>
    <jsp:include page="homefooter.jsp" ></jsp:include>
   
</body>
</html>

<script>x
     $("#wgtmsr").change(function () {
        var selectedValues = $(this).val();
       // alert("hai");
    });
    </script>