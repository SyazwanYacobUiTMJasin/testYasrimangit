<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Yasriman | Home</title>
    <link rel="stylesheet" href="./css/styles.css" />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"
    />
    <link rel="icon" href="https://i.ibb.co/F7PH3zS/logo.jpg" type="image/png">
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
	  min-height: 25vh;
	  position: fixed;
	  width: 100vw;
	}
	
	.navbarbg a {
	  text-decoration: none;
	  color: #1a4d2e;
	}
	.navbarbg h2 {
	  font-size: 30px;
	}
	
	.navbarbg div a {
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
	
	.navlinks .active {
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
	
	/* MAIN CONTENT//BODY//HERO */
	
	.hero {
	  display: flex;
	  align-items: center;
	  justify-content: center;
	  height: 75vh;
	  color: #1a4d2e;
	  padding: 20px;
	  margin-top: 25vh;
	  overflow-y: hidden;
	}
	
	.maincontent {
	  display: flex;
	  align-items: center;
	  justify-content: center;
	  width: 80vw;
	  gap: 5vw;
	}
	
	.maintitle {
	  display: flex;
	  align-items: flex-start;
	  justify-content: center;
	  flex-direction: column;
	  gap: 10vh;
	}
	
	.maintitle h2 {
	  font-weight: 300;
	}
	
	.maintitle .buttongroup a {
	  text-decoration: none;
	  color: #f5efe6;
	  font-weight: 400;
	  padding: 10px 10px 10px 25px;
	  gap: 2.7vw;
	  display: flex;
	  align-items: center;
	  justify-content: space-between;
	}
	
	.maintitle .buttongroup {
	  display: flex;
	  align-items: center;
	  justify-content: space-between;
	  flex-direction: row;
	  width: 200px;
	  background-color: #1a4d2e;
	  border-radius: 20px;
	  gap: 40px;
	}
	
	/* footer */
	
	.footer {
	  /* background: #f3f3f3; */
	  padding: 10rem 7%;
	}
	
	.footer .box-container {
	  display: -ms-grid;
	  display: grid;
	  -ms-grid-columns: (minmax(25rem, 1fr)) [auto-fit];
	  grid-template-columns: repeat(auto-fit, minmax(25rem, 1fr));
	  gap: 1.5rem;
	}
	
	.footer .box-container .box h3 {
	  font-size: 1.2rem;
	  color: #222;
	  padding: 1rem 0;
	}
	
	.footer .box-container .box p {
	  font-size: 1rem;
	  color: #666;
	  padding-bottom: 0.5rem;
	}
	
	.footer .box-container .box a {
	  font-size: 1rem;
	  color: #666;
	  padding: 0.4rem 0;
	  display: block;
	  text-decoration: none;
	}
	
	.footer .box-container .box a:hover {
	  color: var(--links-hover);
	}
	
	.footer .box-container .box a:hover i {
	  padding-right: 2rem;
	  color: var(--links-hover);
	}
	
	.footer .box-container .box a i {
	  padding-right: 0.5rem;
	  color: black;
	}
	
	.footer .box-container .box form input[type="email"] {
	  width: 100%;
	  padding: 1rem 1.2rem;
	  font-size: 1.6rem;
	  color: #222;
	  margin: 1rem 0;
	  text-transform: none;
	}
	
	.footer .box-container .box .payment {
	  width: 100%;
	  margin-top: 2rem;
	}
	
	input[type="email"] {
	  width: 40%;
	  color: #000000;
	  cursor: pointer;
	  font-size: 20px;
	  text-align: left;
	  background-color: transparent;
	  outline: none;
	  border: none;
	  border-bottom: 2px solid #000000;
	  font-size: 20px;
	}
	
	input[type="email"]:focus {
	  border-bottom: 2px solid aquamarine;
	}
	
	input[type="submit"] {
	  width: 40%;
	  /* padding: 15px 20px; */
	  background-color: transparent;
	  color: #000000;
	  border: none;
	  border-radius: 30px;
	  cursor: pointer;
	  text-decoration: underline;
	  text-underline-offset: 2px;
	  font-size: 20px;
	  border-bottom: #000000;
	  text-align: left;
	}
	
	input[type="submit"]:hover {
	  color: var(--links-hover);
	  text-underline-offset: 5px;
	  border-bottom: aquamarine;
	}
	
	.navbarbg * {
	  overflow: hidden;
	}
	
	/* MOBILE COMPATIBLE */
	
	@media (width < 600px) {
	  * {
	    font-size: 95%;
	  }
	
	  /* NAVBAR */
	
	  .navbarbg {
	    min-height: fit-content;
	    z-index: 99;
	  }
	
	  .navbarbg h2 {
	    font-size: 15px;
	    width: 100vw;
	    margin-right: auto;
	    margin-left: 20vw;
	  }
	  .logintext {
	    transform: scale(0.9);
	    gap: 30px;
	  }
	  .navbarbg .navlinks {
	    display: flex;
	    gap: 40px;
	  }
	
	  /* END NAVBAR */
	
	  .hero {
	    height: fit-content;
	    padding-top: 20px;
	    margin: 200px 0 50px 0;
	  }
	
	  .hero .maincontent {
	    display: flex;
	    flex-direction: column;
	  }
	
	  .hero .maintitle {
	    gap: 20px;
	    width: 100%;
	  }
	
	  .hero img {
	    width: 100px;
	    height: auto;
	  }
	
	  .maintitle .buttongroup {
	    transform: scale(0.5);
	    width: 100%;
	    margin-right: auto;
	    margin-left: 0;
	    padding: 0;
	    justify-content: space-between;
	  }
	
	  .shopnowbutton {
	    width: 100%;
	    font-size: 16px;
	  }
	
	  .footer {
	    padding: 10px 20px;
	  }
	  .footer .box-container .box h3, .footer .box-container .box a{
	    font-size: 14px;
	  }
	}
	
	    
    </style>
  </head>
  <body>
    <div class="navbarbg">
      <a href="./index.jsp"><h2>YASRIMAN</h2></a>
      <div class="logintext">
        <div class="searchdiv">
          <img src="https://svgshare.com/i/177L.svg" alt="" draggable="false" />
          <input
            type="text"
            placeholder="Search"
            name="search"
            autocomplete="off"
            id="searchInput"
          />
        </div>
        <%
        Integer loggedinaccountid = (Integer) session.getAttribute("loggedinaccountid");
        String loggedinaccountusername = (String) session.getAttribute("accountusername");
		String loggedinaccountrole = (String) session.getAttribute("accountrole"); 
		%>
		
		<%
		    if (loggedinaccountusername != null) {
		%>
		        <a href="<%=request.getContextPath()%>/viewcustomeraccount?uid=<%=loggedinaccountid%>&from=index">
		            <%= loggedinaccountusername %>
		            <div class="loginicon">
		                <img loading="lazy" src="https://cdn.builder.io/api/v1/image/assets/TEMP/fee6b20cb0abd925cc4a3bda7cf3fa3366c37bcc07b2da638108c5651aca2ad0?apiKey=8730b69884724863a1e8089b99726052&" class="img" draggable="false" />
		            </div>
		        </a>
		<%
		    } else {
		%>
		        <a href="<%=request.getContextPath()%>/signupform">
		            Sign In/Sign Up
		            <div class="loginicon">
		                <img loading="lazy" src="https://cdn.builder.io/api/v1/image/assets/TEMP/fee6b20cb0abd925cc4a3bda7cf3fa3366c37bcc07b2da638108c5651aca2ad0?apiKey=8730b69884724863a1e8089b99726052&" class="img" draggable="false" />
		            </div>
		        </a>
		<%
		    }
		%>

      </div>
      <div>
      	<% if ("Staff".equals(loggedinaccountrole)) { %>
            <a href="<%=request.getContextPath()%>/staffdashboard">DASHBOARD</a>
        <% } %>
        </div>
        
      <div class="navlinks">
        <a href="./index.jsp" class="active">HOME</a>
        <a href="./product.jsp">PRODUCTS</a> 
      	<a href="./viewcart.jsp">CART</a>
      	</div>
      
    </div>
    <div class="hero">
      <div class="maincontent">
        <div class="homepageimage">
          <img src="https://i.ibb.co/MPr8bQG/homepageplantrender.png" alt="plants.png" draggable="false"/>
        </div>
        <div class="maintitle"> 
          <h1>YASRIMAN PLANTS AND TOOLS SHOP</h1>
          <h2>
            Cultivating Green Dreams:<br />Your Destination for Flourishing
            Gardens and Bountiful Harvests
          </h2>
          <div class="buttongroup">
            <a href="./product.html" class="shopnowbutton"
              >SHOP NOW
              <img
                src="https://cdn.builder.io/api/v1/image/assets/TEMP/f1f9cbc178d135220ccf74206dc3dc5a7daee51912974fb9e463c502ab2aeccf?apiKey=8730b69884724863a1e8089b99726052&"
                alt="arrow icon" draggable="false"
            /></a>
          </div>
        </div>
      </div>
    </div>
    <section class="footer">
      <div class="box-container">
        <table>
          <tr>
            <td>
              <div class="box">
                <h3>Quick links</h3>
              </div>
            </td>
          </tr>
          <tr>
            <td>
              <div class="box">
                <a href="./index.jsp"
                  ><i class="fas fa-arrow-right"></i> Home</a
                >
              </div>
            </td>
          </tr>
          <tr>
            <td>
              <div class="box">
                <a href="./product.html"
                  ><i class="fas fa-arrow-right"></i> Products</a
                >
              </div>
            </td>
          </tr>
         
          <tr>
            <td>
              <div class="box">
                <a href="./viewcart.html"
                  ><i class="fas fa-arrow-right"></i> Cart</a
                >
              </div>
            </td>
          </tr>
          <tr>
            <td>
              <div class="box">
                <a href="./signup.html"
                  ><i class="fas fa-arrow-right"></i> Sign In/Sign Up</a
                >
              </div>
            </td>
          </tr>
        </table>

        <table>
          <tr>
            <td>
              <div class="box">
                <h3>Follow us</h3>
              </div>
            </td>
          </tr>
          <tr>
            <td>
              <div class="box">
                <a href="https://www.facebook.com/" target="_blank"
                  ><i class="fab fa-facebook-f"></i> Facebook</a
                >
              </div>
            </td>
          </tr>
          <tr>
            <td>
              <div class="box">
                <a href="https://twitter.com/" target="_blank"
                  ><i class="fab fa-twitter"></i> Twitter</a
                >
              </div>
            </td>
          </tr>
          <tr>
            <td>
              <div class="box">
                <a href="https://www.instagram.com/" target="_blank"
                  ><i class="fab fa-instagram"></i> Instagram</a
                >
              </div>
            </td>
          </tr>
          <tr>
            <td>
              <div class="box">
                <a href="https://www.linkedin.com/" target="_blank"
                  ><i class="fab fa-linkedin"></i> Linkedin</a
                >
              </div>
            </td>
          </tr>
          <tr>
            <td>
              <div class="box">
                <a
                  href="https://www.pinterest.com/business/hub/"
                  target="_blank"
                  ><i class="fab fa-pinterest"></i> Pinterest</a
                >
              </div>
            </td>
          </tr>
        </table>
      </div>
    </section>

    <script>
      document.getElementById('searchInput').addEventListener('keydown', function(event) {
          if (event.key === 'Enter') {
              event.preventDefault();
              const query = event.target.value;
              localStorage.setItem('searchQuery', query);
              window.location.href = 'product.html';
          }
      });
  </script>
  </body>
</html>
