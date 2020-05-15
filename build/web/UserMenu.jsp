<!--    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-alpha.6/css/bootstrap.min.css" rel="stylesheet" />-->
<style>
    .nav-item{
        margin-left: 10px;
    }
    .navbar-nav{
        width: 500px;
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
        <a class="nav-link" href="AskQuestion.jsp"></a>
    </li>
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        Ask Question
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="AskQuestion.jsp">AskQuestion</a>
        <a class="dropdown-item" href="ResponseAskQuestion.jsp">Response</a>
      </div>
    </li>
    
    
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        Talk To Lawyer
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="TalktoaLawyer.jsp">Talk To Lawyer</a>
        <a class="dropdown-item" href="ResponseTalkLawer.jsp">Response</a>
      </div>
    </li>
    
    <li class="nav-item dropdown">
      <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">
        Review Docs
      </a>
      <div class="dropdown-menu">
        <a class="dropdown-item" href="SendDocsToLawyer.jsp">SendDocs</a>
        <a class="dropdown-item" href="ViewReviewDocsByUser.jsp">Response</a>
      </div>
    </li>
    
    <li class="nav-item">
      <a class="nav-link" href="SearchLawyers.jsp">SearchALawyer</a>
    </li>
    <li class="nav-item">
      <a class="nav-link" href="Logout.jsp">Logout</a>
    </li>
  </ul>
  
</nav>
<h5 style="margin-left: 200px;" align='right'>Active User:&nbsp;&nbsp;&nbsp;&nbsp;<%=userid%>&nbsp;&nbsp;</h5>
