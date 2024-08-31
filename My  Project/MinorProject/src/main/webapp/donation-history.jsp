<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
String id = request.getParameter("donate");
String driver = "com.mysql.cj.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "1page";
String userid = "root";
String password = "root";
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!doctype html>
<html lang="en">

<head>

  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <!-- icons -->
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.7.0/css/all.css"
    integrity="sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ" crossorigin="anonymous">

     <!-- logo  -->
     <link rel="icon" href="../logo.png" type="image/icon type">

  <!-- google fonts -->
  <link rel="preconnect" href="https://fonts.googleapis.com">
  <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
  <link href="https://fonts.googleapis.com/css2?family=Oswald:wght@500&display=swap" rel="stylesheet">
  <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>

  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">


  <title>Donation History</title>

  <style>
    * {
      /* box-sizing: border-box; */
      margin: 0;
      padding: 0;
      font-family: 'Oswald', sans-serif;
      font-family: 'Tiro Gurmukhi', serif;
      font-family: 'Ubuntu', sans-serif;
      /* font-size: 18px; */
      /* background-color: #24252A; */
    }

    header a {
      color: white;
      text-decoration: none;
    }

    header {
      position: fixed;
      top: 0;
      right: 0;
      left: 0;
      z-index: 1030;

      height: 50px;
      background-color: red;
      display: flex;
      justify-content: flex-end;
      align-items: center;
      padding: 10px 3%;


    }

    .conten {


      border-radius: 20px;
      background-color: white;
      max-width: 946px;
      height: 540px;
      margin: 0 auto;
      box-sizing: border-box;
      padding: 0;
      display: block;

    }

    .in {

      /* padding: -10px 14px; */
      height: 50px;
      margin: 63px 19px;

    }

    .card-cont {
      display: flex;
      flex-direction: column;
      position: relative;
    }

    .card-heading {
      background-color: black;
      padding: 20px 0;
      border-radius: 8px;
    }

    .card-heading h1 {
      color: white;
      text-align: center;
      text-transform: uppercase;
      font-size: 24px;

    }

    .logo {
      cursor: pointer;
      margin-right: auto;


    }

    .nav__links {
      list-style: none;
    }

    .nav__links li {
      margin: 0px 2px;
      display: inline-block;
      padding: 0px 30px;
    }

    .nav__links li a {
      transition: all 0.3s ease 0s;
    }

    .nav__links li a:hover {
      color: gray;
    }

    header a:hover {
      color: white;
    }


    .bar {
      height: 695px;
      /* width:280; */
    }

    .side-bar {
      display: flex;
    }

    .main {
      width: 88%;
      /* background-color: #F3F5F9; */
      padding-left: 42px;
      padding-right: 42px;
      height: 639px;
      margin-top: 50px;
      margin-left: 203px;


      /* width: 1058px;
            background-color: #F3F5F9;
            padding: 42px; */
      /* background: linear-gradient(to top right, #08aeea 0%, #b721ff 100%); */
    }

    .form-body {
      padding: 30px 70px;
      padding-bottom: 73px;
    }

    .row {
      display: flex;
      justify-content: space-between;
    }

    .col {
      height: 140px;
      /* padding: 0; */
    }

    .blood {
      float: right;
    }

    .val {
      margin-left: 11px;
      margin-top: -2px;
      font-size: 14px;
    }

    .card-border {
      border: 1px solid rgb(95, 102, 107);
      margin-top: 3px;
      background-color: #f8f9fa;
      /* width: 260px; */
    }

    .in-sty {
      width: 432px;
      height: 39px;
      padding: 20px;
      margin-left: 22px;
      border-radius: 7px
    }

    /* .status{
          border: 2px solid red;
        } */
  </style>

</head>

<body>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
    crossorigin="anonymous"></script>


  <header>


    <a href="#" class="logo"> <i class="fas fa-heartbeat" style='font-size:23px;color:white'></i>
      <b style="font-size: 23px">&nbsp;Blood Bank Management</b></a>

    <nav>

      <!-- <ul class="nav__links" style="margin-top: 14px">
                <li><a href="http://localhost/BBMS/index.html"><i class="fas fa-home"></i>&nbsp;Home</i></a></li>

                <li><a href="#"><i class="fas fa-procedures"></i>&nbsp; Patient</i></a>
                </li>
                <li><a href="donor-login.html"><i class="fas fa-user"></i>&nbsp; Donor</i></a>
                </li>
                <li><a href="../admin/admin-login.html"><i class="fas fa-user-shield"></i>&nbsp; Admin</i></a>
                </li>
            </ul> -->
      </div>
    </nav>

  </header>
  <!-- side bar -->
  <div class="side-bar">

    <div class="d-flex flex-column flex-shrink-0 p-3 text-white bg-dark bar" style="    position: fixed;
    margin-top: 50px;">
      <a href="Donor-dash.jsp" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none">
        <h3 style="margin-left: 16px;
        margin-bottom: auto;">Dashboard</h3>
      </a>
      <hr>
      <ul class="nav nav-pills flex-column mb-auto">
        <li class="nav-item">
          <a href="Donor-dash.jsp" class="nav-link text-white" aria-current="page">
            <i class="fas fa-home">
              <use xlink:href="#home"></use>
            </i>
            &nbsp;Home
          </a>
        </li>
        <li>
          <a href="donate-blood.html" class="nav-link text-white">
            <i class="fas fa-hand-holding-heart"></i>
            &nbsp;Donate Blood
          </a>
        </li>
        <li>
          <a href="donation-history.jsp" class="nav-link active">
            <i class="fas fa-history"></i>&nbsp;&nbsp;Donation History
          </a>
        </li>
      
      </ul>
      <hr>
      <div class="dropdown">
        <a href="#" class="d-flex align-items-center text-white text-decoration-none dropdown-toggle" id="dropdownUser1"
          data-bs-toggle="dropdown" aria-expanded="false">
          <i class="fas fa-user" width="32" height="32" class="rounded-circle me-2"></i>
          <strong>&nbsp;&nbsp;&nbsp;Donor&nbsp;</strong>
        </a>
        <ul class="dropdown-menu dropdown-menu-dark text-small shadow" aria-labelledby="dropdownUser1">
          <!-- <li><a class="dropdown-item" href="#">New project...</a></li>
          <li><a class="dropdown-item" href="#">Settings</a></li> -->
          <!-- <li><a class="dropdown-item" href="#">Profile</a></li>
          <li>
            <hr class="dropdown-divider">
          </li> -->
          <li><a class="dropdown-item" href="donor-login.html">Sign out</a></li>
        </ul>
      </div>
    </div>




    <!-- main content -->

    <div class="main">

      <div class="cont-card">
        <h2 style="text-align: center; margin-top: 36px;">DONATION HISTORY</h2>
        <br>

        <table class="table table-bordered"
          style="text-align: center;  vertical-align: middle; background-color: #F3F5F9;">
          <thead class="table-dark">
            <tr>
            <th scope="col" style="text-align:center;">Username</th>
              <th scope="col" style="text-align:center;">Name</th>
              <th scope="col" style="text-align:center;">Disease</th>
              <th scope="col" style="text-align:center;">Age</th>
              <th scope="col" style="text-align:center;">Date and status</th>
             
            </tr>
          </thead>
				<%
				try{
					connection = DriverManager.getConnection(connectionUrl+database, userid, password);
					statement=connection.createStatement();
					String sql ="select * from donate";
					resultSet = statement.executeQuery(sql);
					while(resultSet.next()){
					%>
					<tr>
					<td><%=resultSet.getString("username") %></td>
					<td><%=resultSet.getString("name") %></td>
					
					<td><%=resultSet.getString("disease") %></td>
					<td><%=resultSet.getString("age") %></td>
					
					<td><%=resultSet.getString("status") %></td>
					

					</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>





</body>

</html>