<%@ page import="java.sql.*" %>
<%@ page import="javax.naming.*, javax.sql.*" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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


    <title>Donor Dahsboard</title>
    
    <link rel="stylesheet" href="Donor-dash.css">

</head>

<body>
	
	<form action="Donor-dash" method="post">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
        crossorigin="anonymous"></script>


    <header>


        <a href="#" class="logo"> <i class="fas fa-heartbeat"
                style='font-size:23px;color:white'></i>
            <b style="font-size: 23px">&nbsp;Blood Bank Management</b></a>

        <nav>

            <!--<ul class="nav__links" style="margin-top: 14px">
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

        <div class="d-flex flex-column flex-shrink-0 p-3 text-white bg-dark bar">
            <a href="Donor-dash.jsp" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-white text-decoration-none">
                <h3 style="margin-left: 16px;
        margin-bottom: auto;">Dashboard</h3>
            </a>
            <hr>
            <ul class="nav nav-pills flex-column mb-auto">
                <li class="nav-item">
                    <a href="Donor-dash.jsp" class="nav-link active" aria-current="page">
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
                    <a href="donation-history.jsp" class="nav-link text-white">
                        <i class="fas fa-history"></i>&nbsp;&nbsp;Donation History
                    </a>
                </li>
                
               
            </ul>
            <hr>
            <div class="dropdown">
                <a href="#" class="d-flex align-items-center text-white text-decoration-none dropdown-toggle"
                    id="dropdownUser1" data-bs-toggle="dropdown" aria-expanded="false">
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
            <div class="cont-box">

                <h2>Donation Status</h2>
                <!-- row -->
                <div class="row">
                    <div class="col">
                        <div class="card-border">
                            <div style=" padding-right: 19px; padding-bottom: 46px;  padding-top: 13px;">
                                <div class="blood">
                                    <h3><i class="fas fa-hand-holding-heart" style="color: blue;"></i></h3>
                                </div>
                            </div>
                            <div class="val">
                            

<%
    Connection connection = null;
    Statement statement = null;
    ResultSet resultSet = null;

    try {
        // Load the JDBC driver (replace "your_driver_class" with the actual driver class for your database)
        Class.forName("com.mysql.cj.jdbc.Driver");

        // Establish a connection (replace "your_jdbc_url", "your_username", and "your_password" with your actual database connection details)
        connection = DriverManager.getConnection("jdbc:mysql:///1page","root","root");

        // Execute the query to get the row count (replace "your_table_name" with the actual table name)
        statement = connection.createStatement();
        resultSet = statement.executeQuery("SELECT COUNT(*) FROM donate");

        // Retrieve the row count from the result set
        int rowCount = 0;
        if (resultSet.next()) {
            rowCount = resultSet.getInt(1);
        }
%>
<div class="val">
                        
                              <h6>Total Donation Request  <%= rowCount %></h6>                    
                            </div>
    

<%
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        // Close the resources
        try {
            if (resultSet != null) resultSet.close();
            if (statement != null) statement.close();
            if (connection != null) connection.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
%>

</body>
</html>