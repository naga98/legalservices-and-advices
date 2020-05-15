<%
    session.invalidate();
    response.sendRedirect("index.jsp?msg=You Have Been Logged Out Successfully");
%>