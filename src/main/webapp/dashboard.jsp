<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<% String accountrole = (String) session.getAttribute("accountrole");
	if ("Staff".equals(accountrole)) { 
	%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Yasriman | Dashboard</title>
    <link rel="icon" href="https://i.ibb.co/F7PH3zS/logo.jpg" type="image/png">
    <link rel="stylesheet" href="./css/dashboard.css">
    <style type="text/css">
    @import url("https://fonts.googleapis.com/css2?family=Inria+Sans:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700&display=swap");
	@import url("https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap");
	
	* {
	  margin: 0;
	  padding: 0;
	  box-sizing: border-box;
	  font-family: "Inria Sans", sans-serif;
	  transition: all 0.3s;
	  overflow-x: hidden;
	  /* overflow-y: hidden; */
	}
	
	body {
	  background-color: #f5efe6;
	  max-width: 100vw;
	  max-height: 100vh;
	}
	
	/* START NAVBAR */
	
	.navbarbg {
	  display: flex;
	  align-items: center;
	  justify-content: center;
	  background-color: #e8dfca;
	  color: #1a4d2e;
	  font-weight: 700;
	  flex-direction: column;
	  padding: 20px 0;
	  gap: 30px;
	  height: 25vh;
	  position: fixed;
	  width: 100vw;
	  overflow: hidden;
	}
	
	.navbarbg a{
	  text-decoration: none;
	  color: #1a4d2e;
	}
	.navbarbg h2 {
	  font-size: 30px;
	}
	
	.navbarbg div a, #hero a {
	  text-decoration: none;
	  color: inherit;
	  font-weight: 400;
	}
	
	.navbarbg .loginicon {
	  display: flex;
	  align-items: center;
	  justify-content: center;
	  gap: 10px;
	}
	
	.navbarbg .logintext {
	  display: flex;
	  align-items: center;
	  justify-content: space-between;
	  width: 90vw;
	}
	
	.navbarbg .logintext a {
	  display: flex;
	  align-items: center;
	  justify-content: end;
	  width: fit-content;
	  gap: 10px;
	  flex-direction: row-reverse;
	}
	
	.logintext .searchdiv {
	  display: flex;
	  align-items: center;
	  justify-content: center;
	  gap: 10px;
	}
	
	.logintext img {
	  max-width: 20px;
	}
	
	.logintext input[type="text"] {
	  background-color: transparent;
	  border: none;
	  border-bottom: 2px solid #1a4d2e;
	  outline: none;
	  padding: 5px;
	}
	
	.navbarbg .navlinks {
	  display: flex;
	  align-items: center;
	  justify-content: center;
	  width: 80vw;
	  gap: 160px;
	}
	
	.navlinks .active{
	  border-bottom: 1px solid #1a4d2e;
	}
	
	.navlinks a:hover {
	  border-bottom: 1px solid #1a4d2e;
	  transition: border-bottom 0.3s ease-in-out;
	}
	
	input[type="text"]:focus {
	    border-bottom: 2px solid #d5c7b2;
	    transition: border-bottom 0.3s; 
	}
	
	/* END NAVBAR */
	
	#hero {
	    display: flex;
	    height: 75vh;
	    margin-top: 25vh;
	}
	
	#sidebar {
	    
	    min-width: 222px;
	    background-color: #1a4d2e;
	    color: white;
	    padding: 20px;
	}
	
	#main {
	    flex: 1;
	    padding: 20px;
	    display: grid;
	    grid-template-rows: repeat(2, 1fr);
	    grid-template-columns: repeat(2, 1fr);
	    gap: 20px;
	    height: 100%;
	}
	
	.grid-item {
	    background-color: #fff;
	    border-radius: 5px;
	    padding: 20px;
	    font-size: 120%;
	    box-shadow: 0 0 20px rgba(0, 0, 0, 0.058);
	}
	
	.grid-title {
	    margin-top: 0;
	    margin-bottom: 10px;
	}
	
	#sidebar ul{
	    display: flex;
	    gap: 30px;
	    flex-direction: column;
	    padding-left: 10px;
	}
	
	#sidebar ul li{
	    border-bottom: 1px solid rgba(255, 255, 255, 0.241);
	    padding: 4px 5px;
	}
	
	.main{
	  width: 100%;
	  height: fit-content;
	  padding: 30px 20px;
	}
	
	#sidebar b{
	  font-weight: 600;
	  font-size: 20px;
	}
	
	.grid-item h3{
	  font-size: 130%;
	  margin-bottom: 30px;
	}
	
	.grid-contentwimg{
	  display: flex;
	  justify-content: space-between;
	}
	
	.grid-contentwimg img{
	  width: 70px;
	  height: auto;
	}
	
	@media (width < 830px) {
	  * {
	    font-size: 95%;
	  }
	
	  #main{
	    grid-template-columns: repeat(1, 1fr);
	    height: fit-content;
	    overflow-y: visible;
	  }
	
	  .main
	  {
	    height:70vh;
	  }
	
	  h1
	  {
	    font-size: 20px;
	  }
	}
	
	
	@media (width < 600px) {
	  #sidebar  {
	    min-width: 100px;
	    padding: 20px 10px;
	    height: 100%;
	  }
	
	  #sidebar ul
	  {
	    padding: 0;
	  }
	}
	
	@media (width < 400px)
	{
	  #main
	  {
	    padding: 20px 0;
	  }
	}
    </style>
</head>
<body>
    <div class="navbarbg">
        <a href="./index.jsp"><h2>YASRIMAN</h2></a>
        <div class="navlinks">
            <a href="./index.jsp">HOME</a>
    </div>
      </div>
<div id="hero">
    <div id="sidebar">
        <b>NAV LINKS</b>
        <!-- Sidebar Navigation Links -->
        <ul>
            <br>
            <li><a href="<%=request.getContextPath()%>/staffdashboard">Dashboard</a></li>
            <li><a href="<%=request.getContextPath()%>/listallaccounts">Accounts</a></li>
            <li><a href="./inventory.html">Inventory</a></li>
            <li><a href="./order.html">Orders</a></li>
            <!-- Add more navigation links as needed -->
        </ul>
    </div>

    <div class="main">
    <h1>Dashboard</h1>
    <div id="main">
        <!-- Grid Items -->

        <div class="grid-item">
            <h3 class="grid-title">Today's Profit</h3>
            <div class="grid-content">
                <p>RM178.34</p>
            </div>
        </div>
        <div class="grid-item">
            <h3 class="grid-title">Most Sold Plant</h3>
            <div class="grid-contentwimg">
                <div class="details">
                <p>Plant Name: Caladium Plant</p>
                <p>Quantity Sold: 14</p></div>
                <img src="./images/p1.jpg" alt="">
            </div>
        </div>
        <div class="grid-item">
            <h3 class="grid-title">Most Sold Tool</h3>
            <div class="grid-contentwimg">
                <div class="details">
                <p>Tools Name: Sarung Tangan</p>
                <p>Quantity Sold: 23</p>
            </div>
            <img src="./images/sarung.jpeg" alt="">

            </div>
        </div>
        <div class="grid-item">
            <h3 class="grid-title">Monthly Total Orders</h3>
            <div class="grid-content">
                <p>81 Total Orders</p>
                <p>+12 From Previous Month</p>
            </div>
        </div>
    
    </div>
</div>
</div>

</body>
</html>
<% } else { %>
Error 404
 <% } %>