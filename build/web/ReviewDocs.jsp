<%@page import="DB.DAO"%>
<jsp:useBean  id="bean" scope="page" class="sr.ReviewDoc">
    <jsp:setProperty name="bean"  property="*" ></jsp:setProperty>
</jsp:useBean>
<%
    out.println(bean);
    DAO dao=new DAO();
    if(dao.submitDocs(bean))
    {   response.sendRedirect("SendDocsToLawyer.jsp?msg=Docs Send To Review Successfully");
    }else
    {   response.sendRedirect("SendDocsToLawyer.jsp?msg=Docs Sent Failed");
    }
    
%>