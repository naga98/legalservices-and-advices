<!--<link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" rel="stylesheet" />-->
<style>
    .nav-item{
        margin-left: 10px;
    }
    .navbar-nav{
        margin-left: 800px;
    }
    </style>
<%
String userid=(String)session.getAttribute("userid");
%>
<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <!-- Brand -->
    <a class="navbar-brand" style="width: 700px;" href="UserHome.jsp"><img style="width: 50px;" src="images/Logo.png" /></a>
  <!-- Links -->
  <ul class="navbar-nav" style="margin-left: -100px;">
    <li class="nav-item">
        <a class="nav-link" href="ViewAskAQuestion.jsp">ViewQuestions</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="ViewTalkToALawer.jsp">WhoWantsToTalk</a>
    </li>
    <li class="nav-item">
        <a class="nav-link" href="ViewReviewDocs.jsp">ViewReviewDocs</a>
    </li>
<!--    <li class="nav-item">
      <a class="nav-link" href="Register.jsp">Talk to you a lawyer</a>
    </li>-->
    
    <li class="nav-item">
      <a class="nav-link" href="Logout.jsp">Logout</a>
    </li>

<!--    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        Sign Up a Lawyer
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="SignUp.jsp">Lawyer</a>
        <a class="dropdown-item" href="UserSignUp.jsp">User</a>        
      </div>
    </li>
-->
  </ul>
</nav>
<h5 style="margin-left: 200px;" align='right'>Active User:&nbsp;&nbsp;&nbsp;&nbsp;<%=userid%>&nbsp;&nbsp;</h5>
