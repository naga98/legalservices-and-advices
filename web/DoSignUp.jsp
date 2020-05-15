<%
    String FullName =request.getParameter("FullName");
    String Mobileno = request.getParameter("Mobileno");
    String EmailId = request.getParameter("EmailId");
    String Password = request.getParameter("Password");
    String AreaofLaw = request.getParameter("AreaofLaw");
    String Experience = request.getParameter("Experience");
    out.println(FullName);
    out.println(Mobileno);
    out.println(EmailId);
    out.println(Password);
    out.println(AreaofLaw);
    out.println(Experience);
%>