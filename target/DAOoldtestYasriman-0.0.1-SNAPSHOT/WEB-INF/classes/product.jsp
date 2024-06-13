<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Yasriman | Products</title>
    <link rel="icon" href="https://i.ibb.co/F7PH3zS/logo.jpg" type="image/png">
    <link rel="stylesheet" href="./css/product.css" />
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
	
	
	.navbarbg a{
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
	
	/* CONTENT */
	/* Card Styles */
	.card {
	  display: flex;
	  align-items: center;
	  justify-content: space-between;
	  flex-direction: column;
	  float: left;
	  width: 25%; /* Each card takes 25% of the container's width to have 4 cards in a row */
	  padding: 0 15px; /* Add some spacing between cards */
	  box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2);
	  max-width: 300px;
	  margin: auto;
	  margin-top: 50px;
	  text-align: center;
	  font-family: Arial, sans-serif;
	  height: 450px;
	}
	
	.price {
	  color: grey;
	  font-size: 22px;
	}
	
	.card button {
	  border: none;
	  outline: 0;
	  padding: 12px;
	  color: white;
	  background-color: #000;
	  text-align: center;
	  cursor: pointer;
	  width: 100%;
	  font-size: 18px;
	}
	
	.card button:hover {
	  opacity: 0.7;
	}
	
	/* Browse-by Styles */
	.Browse-by {
	
	  float: left;
	  margin-right: 20px; 
	  margin-top: 40.8vh;
	  margin-left: 20px;
	  min-width: 200px;
	  background-color: #f1f1f1;
	  border: 1px solid #ddd;
	  border-radius: 4px;
	  font-family: Arial, sans-serif;
	}
	
	/* Mtree Styles */
	.mtree {
	  list-style: none;
	  padding: 0;
	  margin: 0;
	}
	
	.mtree > li > p {
	  padding: 10px;
	  margin: 0;
	  font-weight: bold;
	  color: #333;
	  background-color: #e6e6e6;
	  border-bottom: 1px solid #ddd;
	}
	
	.mtree li ul li {
	  padding: 8px 16px;
	}
	
	.mtree li ul li a {
	  color: #333;
	  text-decoration: none;
	  display: block;
	}
	
	.mtree li ul li a:hover {
	  background-color: #ddd;
	}
	
	/* Grid Styles */
	.grid-container {
	  display: grid;
	  grid-template-columns: repeat(4, minmax(250px, 1fr));
	  gap: 20px;
	  justify-content: flex-start;
	  margin-top: 40px;
	}
	
	.grid-item {
	  background-color: #ffffff;
	  padding: 20px;
	  text-align: center;
	  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
	}
	
	.grid-item img {
	  width: 100%;
	  max-width: 200px; /* Adjust as needed */
	}
	
	.grid-item h3 {
	  margin-top: 10px;
	  font-size: 18px;
	}
	
	.grid-item p {
	  margin: 5px 0;
	  font-size: 14px;
	  color: #555555;
	}
	
	.grid-item button {
	  border: none;
	  outline: none;
	  padding: 10px 20px;
	  background-color: #000000;
	  color: #ffffff;
	  font-size: 14px;
	  cursor: pointer;
	  transition: background-color 0.3s;
	}
	
	.grid-item button:hover {
	  background-color: #333333;
	}
	
	
	/* footer */
	
	.footer {
	  /* background: #f3f3f3; */
	  padding: 10rem 7%;
	}
	
	.footer .box-container {
	  display: -ms-grid;
	  display: grid;
	  -ms-grid-columns: (minmax(25rem, 1fr))[auto-fit];
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
	  padding-bottom: .5rem;
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
	  padding-right: .5rem;
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
	
	input[type="email"]{
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
	
	input[type="email"]:focus{
	  border-bottom: 2px solid aquamarine;
	}
	
	input[type="submit"]{
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
	
	input[type="submit"]:hover{
	  color: var(--links-hover);
	  text-underline-offset: 5px;
	  border-bottom: aquamarine;
	}
	
	.gridallprod{
	  margin-top: 35vh;
	}
	
	.navbarbg * {
	  overflow: hidden;
	}
	
	@media (width < 1300px) {
	  
	
	  .Browse-by{
	    min-width: 100px;
	  }
	
	  .Browse-by .mtree li
	  {
	    overflow: hidden;
	  }
	
	  .gridallprod{
	    max-width: 100%;
	  }
	
	  
	
	  .grid-container {
	    grid-template-columns: repeat(2, minmax(60px, 1fr));
	    gap: 20px;
	    margin-top: 40px;
	  }
	  
	  .grid-item h3,.grid-item p,.grid-item button
	  {
	    font-size: 14px;
	  }
	}
	
	@media (width < 600px)
	{
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
	
	  .footer{
	    padding: 10px 20px;
	  }
	
	  .footer .box-container .box h3, .footer .box-container .box a{
	    font-size: 14px;
	  }
	  
	  /* END NAVBAR */
	
	  .Browse-by{
	    min-width: 60px;
	  }
	
	  .Browse-by .mtree li
	  {
	    overflow: hidden;
	  }
	
	  .gridallprod{
	    width: 40vw;
	  }
	
	  .gridallprod h1{
	    font-size: 20px;
	  }
	
	  .grid-container {
	    grid-template-columns: repeat(1, minmax(40px, 1fr));
	    gap: 20px;
	    margin-top: 40px;
	  }
	  
	  .grid-item h3,.grid-item p,.grid-item button
	  {
	    font-size: 14px;
	  }
	}
	
	@media (width < 500px)
	{
	  .Browse-by{
	    min-width: 60px;
	  }
	
	  .Browse-by .mtree li
	  {
	    overflow: hidden;
	  }
	
	  .gridallprod{
	    width: 40vw;
	  }
	
	  .gridallprod h1{
	    font-size: 20px;
	  }
	
	  .grid-container {
	    grid-template-columns: repeat(1, minmax(40px, 1fr));
	    gap: 20px;
	    margin-top: 40px;
	  }
	  
	  .grid-item h3,.grid-item p,.grid-item button
	  {
	    font-size: 14px;
	  }
	}
	
	@media (width < 370px)
	{
	  .Browse-by{
	    width: 200px;
	    margin-top: 30vh;
	    /* margin-left: auto; */
	    margin-right: auto;
	  }
	
	  .Browse-by .mtree li
	  {
	    overflow: hidden;
	  }
	
	  .gridallprod{
	    padding: 20px 40px 0 40px;
	    width: 100%;
	    display: flex;
	    flex-direction: column;
	  }
	
	  .gridallprod h1{
	    font-size: 20px;
	  }
	
	  .grid-container {
	    grid-template-columns: repeat(1, minmax(40px, 1fr));
	    gap: 20px;
	    margin-top: 40px;
	  }
	  
	  .grid-item h3,.grid-item p,.grid-item button
	  {
	    font-size: 14px;
	  }
	}
    </style>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta2/css/all.min.css"
    /> 
  </head>
  <body>
    <div class="navbarbg">
      <a href="./index.html"><h2>YASRIMAN</h2></a>
      <div class="logintext">
        <div class="searchdiv">
          <img src="https://svgshare.com/i/177L.svg" alt="" draggable="false" />
          <input
            id="searchInput"
            type="text"
            placeholder="Search"
            name="search"
            autocomplete="off"
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
        <a href="./index.jsp">HOME</a>
        <a href="./product.jsp" class="active">PRODUCTS</a>
        <!-- <a href="./information.html">INFORMATION</a>
        <a href="./faq.html">FAQ</a> -->
        <a href="./viewcart.jsp">CART</a>
      </div>
    </div>

    <div class="Browse-by">
      <ul class="mtree">
        <li>
          <p>Browse by</p>
          <ul>
            <li><a href="./product.html">• All product</a></li>
            <li><a href="./plant.html">• Plant</a></li>
            <li><a href="./tool.html">• Tools and Equipment</a></li>
          </ul>
        </li>
      </ul>
    </div>

    <div class="gridallprod">
      <h1>All Product</h1>
      <div class="grid-container">
        <div class="grid-item">
          <a
            href="./productdetails.html"
            style="text-decoration: none; color: inherit"
          >
            <img src="./images/p1.jpg" alt="Philodendron" />
            <h3>Philodendron</h3>
            <p class="price">RM19.99</p>
          </a>
          <button class="add-to-cart">Add to Cart</button>
        </div>
        <div class="grid-item">
          <img src="./images/p2.jpg" alt="Spider Plant" />
          <h3>Spider Plant</h3>
          <p class="price">RM12.50</p>
          <button class="add-to-cart">Add to Cart</button>
        </div>

        <div class="grid-item">
          <img src="./images/p3.jpg" alt="Ferns" />
          <h3>Ferns</h3>
          <p class="price">RM8.99</p>
          <button class="add-to-cart">Add to Cart</button>
        </div>

        <div class="grid-item">
          <img src="./images/baja.jpg" alt="Baja Organik (1kg)" />
          <h3>Baja Organik (1kg)</h3>
          <p class="price">RM15.60</p>
          <button class="add-to-cart">Add to Cart</button>
        </div>

        <div class="grid-item">
          <img src="./images/sarung.jpeg" alt="Sarung Tangan" />
          <h3>Sarung Tangan</h3>
          <p class="price">RM19.99</p>
          <button class="add-to-cart">Add to Cart</button>
        </div>

        <div class="grid-item">
          <img src="./images/aloevera.jpg" alt="Aloe Vera" />
          <h3>Aloe Vera</h3>
          <p class="price">RM20.00</p>
          <button class="add-to-cart">Add to Cart</button>
        </div>

        <div class="grid-item">
          <img src="./images/shovel.jpg" alt="Shovel" />
          <h3>Shovel</h3>
          <p class="price">RM5.99</p>
          <button class="add-to-cart">Add to Cart</button>
        </div>
      </div>
      <div id="noResults" style="display: none">
        No items match your search.
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
                <a href="./index.html"
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
          <!-- <tr>
            <td>
              <div class="box">
                <a href="./information.html"
                  ><i class="fas fa-arrow-right"></i> Information</a
                >
              </div>
            </td>
          </tr>
          <tr>
            <td>
              <div class="box">
                <a href="./faq.html"><i class="fas fa-arrow-right"></i> FAQ</a>
              </div>
            </td>
          </tr> -->
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
    
    <script src="./js/product.js"></script>
    <script type="text/javascript">
    document.addEventListener('DOMContentLoaded', function () {
        const searchInput = document.getElementById('searchInput');
        const gridItems = document.querySelectorAll('.grid-item');
        const noResults = document.getElementById('noResults');

        searchInput.addEventListener('keyup', function () {
            const filter = searchInput.value.toLowerCase();
            let hasVisibleItems = false;

            gridItems.forEach(function (item) {
                const title = item.querySelector('h3').textContent.toLowerCase();

                if (title.indexOf(filter) > -1) {
                    item.style.display = '';
                    hasVisibleItems = true;
                } else {
                    item.style.display = 'none';
                }
            });

            if (hasVisibleItems) {
                noResults.style.display = 'none';
            } else {
                noResults.style.display = 'block';
            }
        });
    });

    document.addEventListener('DOMContentLoaded', function () {
        const query = localStorage.getItem('searchQuery') || '';
        const searchInput = document.getElementById('searchInput');
        const productContainer = document.getElementById('productContainer');
        const noResults = document.getElementById('noResults');
        searchInput.value = query;

        function searchProducts(query) {
            const items = productContainer.getElementsByClassName('grid-item');
            let found = false;

            for (let item of items) {
                const title = item.querySelector('h3').textContent.toLowerCase();
                if (title.includes(query.toLowerCase())) {
                    item.style.display = '';
                    found = true;
                } else {
                    item.style.display = 'none';
                }
            }

            if (!found) {
                noResults.style.display = 'block';
            } else {
                noResults.style.display = 'none';
            }
        }

        searchInput.addEventListener('input', function () {
            const query = searchInput.value;
            localStorage.setItem('searchQuery', query);
            searchProducts(query);
        });

        searchProducts(query);
    });

    // product.js
    document.addEventListener('DOMContentLoaded', function () {
        const cartButtons = document.querySelectorAll('.add-to-cart');

        cartButtons.forEach(button => {
            button.addEventListener('click', function () {
                const gridItem = button.parentElement;
                const title = gridItem.querySelector('h3').textContent;
                const price = parseFloat(gridItem.querySelector('.price').textContent.replace('RM', ''));
                const imgSrc = gridItem.querySelector('img').src;

                addToCart({ title, price, imgSrc });

                button.textContent = 'Added';
                setTimeout(() => {
                    button.textContent = 'Add to Cart';
                }, 1000);
            });
        });

        function addToCart(item) {
            let cart = JSON.parse(localStorage.getItem('cart')) || [];
            const existingItem = cart.find(cartItem => cartItem.title === item.title);

            if (existingItem) {
                existingItem.quantity += 1;
            } else {
                item.quantity = 1;
                cart.push(item);
            }

            localStorage.setItem('cart', JSON.stringify(cart));
        }
    });


    </script>
    
  </body>
</html>
