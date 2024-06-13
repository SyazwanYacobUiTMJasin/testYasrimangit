<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Yasriman | Cart</title>
  <link rel="icon" href="https://i.ibb.co/F7PH3zS/logo.jpg" type="image/png">
  <link rel="stylesheet" href="./css/viewcart.css">
  <style type="text/css">
  @charset "utf-8";
@import url("https://fonts.googleapis.com/css2?family=Inria+Sans:ital,wght@0,300;0,400;0,700;1,300;1,400;1,700&display=swap");
@import url("https://fonts.googleapis.com/css2?family=Inter:wght@100..900&display=swap");
/* @import url(https://fonts.googleapis.com/css?family=Open+Sans:400,700,600); */

html,
html a {
  -webkit-font-smoothing: antialiased;
  text-shadow: 1px 1px 1px rgba(0, 0, 0, 0.004);
}

/* body {
  background-color: #fff;
  color: #666;
  font-family: 'Open Sans', sans-serif;
  font-size: 62.5%;
  margin: 0 auto;
} */

.navlinks .active{
  border-bottom: 1px solid #1a4d2e;
}

main a {
  border: 0 none;
  outline: 0;
  text-decoration: none;
}

main strong {
  font-weight: bold;
}

main p {
  margin: 0.75rem 0 0;
}

main h1 {
  font-size: 0.75rem;
  font-weight: normal;
  margin: 0;
  padding: 0;
  text-align: left;
}

main input,
main button {
  border: 0 none;
  outline: 0 none;
}

main button {
  background-color: #666;
  color: #fff;
}

main button:hover,
main button:focus {
  background-color: #555;
}

main img,
main .basket-module,
main .basket-labels,
main .basket-product {
  font-size: 16px;
  width: 100%;
}

/* main input,
main button,
main .basket,
main .basket-module,
main .basket-labels,
main .item,
main .price,
main .quantity,
main .subtotal,
main .basket-product,
main .product-image,
main .product-details {
  float: left;
} */

main .price:before,
main .subtotal:before,
main .subtotal-value:before,
main .total-value:before,
main .promo-value:before {
  content: 'RM';
}

main .hide {
  display: none;
}

main {
  display: flex;
  flex-direction: column;
  clear: both;
  font-size: 0.75rem;
  margin: 0 auto;
  overflow-x: hidden;
  padding: 1rem 0;
  width: 960px;
}

main .basketmain 
{
  display: flex;
  width: fit-content;

}

.basket,
aside {
  padding: 0 1rem;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}

.basket {
  min-width: 600px;
}

.basket-module {
  color: #111;
}

label {
  display: block;
  margin-bottom: 0.3125rem;
}

.promo-code-field {
  border: 1px solid #ccc;
  padding: 0.5rem;
  text-transform: uppercase;
  transition: all 0.2s linear;
  width: 48%;
  -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
  -moz-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
  -o-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
  box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
}

.promo-code-field:hover,
.promo-code-field:focus {
  border: 1px solid #999;
}

.promo-code-cta {
  border-radius: 4px;
  font-size: 0.625rem;
  margin-left: 0.625rem;
  padding: 0.6875rem 1.25rem 0.625rem;
}

.basket-labels {
  border-top: 1px solid #ccc;
  border-bottom: 1px solid #ccc;
  margin-top: 1.625rem;
}

ul {
  list-style: none;
  margin: 0;
  padding: 0;
  display: flex;
}

li {
  color: #111;
  display: inline-block;
  padding: 0.625rem 0;
}

li.price:before,
li.subtotal:before {
  content: '';
}

.item {
  width: 30%;
}

.price,
.quantity,
.subtotal {
  width: 15%;
}

.subtotal {
  text-align: right;
}

.remove {
  bottom: 1.125rem;
  float: right;
  position: absolute;
  right: 0;
  text-align: right;
  width: 45%;
}

.remove button {
  background-color: transparent;
  color: #777;
  float: none;
  text-decoration: underline;
  text-transform: uppercase;
}

.item-heading {
  /* padding-left: 4.375rem; */
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}

.basket-product {
  border-bottom: 1px solid #ccc;
  padding: 1rem 0;
  position: relative;
  display: flex;
}

.product-image {
  width: 35%;
}

.product-details {
  width: 100%;
  display: flex;
  align-items: start;
}

.product-frame {
  border: 1px solid #aaa;
}

.product-details {
  /* padding: 0 1.5rem; */
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}

.quantity-field {
  background-color: #ccc;
  border: 1px solid #aaa;
  border-radius: 4px;
  font-size: 0.625rem;
  padding: 2px;
  width: 3.75rem;
}

aside {
  float: right;
  position: relative;
  width: 30%;
}

.summary {
  background-color: #eee;
  border: 1px solid #aaa;
  padding: 1rem;
  position: fixed;
  width: 250px;
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}

.summary-total-items {
  color: #666;
  font-size: 0.875rem;
  text-align: center;
}

.summary-subtotal,
.summary-total {
  border-top: 1px solid #ccc;
  border-bottom: 1px solid #ccc;
  clear: both;
  margin: 1rem 0;
  overflow-x: hidden;
  padding: 0.5rem 0;
}

.subtotal-title,
.subtotal-value,
.total-title,
.total-value,
.promo-title,
.promo-value {
  color: #111;
  float: left;
  width: 50%;
}

.summary-promo {
  -webkit-transition: all .3s ease;
  -moz-transition: all .3s ease;
  -o-transition: all .3s ease;
  transition: all .3s ease;
}

.promo-title {
  float: left;
  width: 70%;
}

.promo-value {
  color: #8B0000;
  float: left;
  text-align: right;
  width: 30%;
}

.summary-delivery {
  padding-bottom: 3rem;
}

.subtotal-value,
.total-value {
  text-align: right;
}

.total-title {
  font-weight: bold;
  text-transform: uppercase;
}

.summary-checkout {
  display: block;
}

.checkout-cta {
  display: block;
  float: none;
  font-size: 0.75rem;
  text-align: center;
  text-transform: uppercase;
  padding: 0.625rem 0;
  width: 100%;
}

.summary-delivery-selection {
  background-color: #ccc;
  border: 1px solid #aaa;
  border-radius: 4px;
  display: block;
  font-size: 0.625rem;
  height: 34px;
  width: 100%;
}




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

.navlinks a:hover {
  border-bottom: 2px solid #000;
  transition: all 0.3s ease-in-out;
}

.navbarbg * {
  overflow: hidden;
}

main h2{
  margin: auto;
}


@media (width < 1020px) {
  main{
    display: flex;
    flex-direction: column;
    justify-content: center;
    align-items: center;
    height: fit-content;
    width: fit-content;
  }
  
  .summary
  {
    position: inherit;
  }
  
  aside{
    width: fit-content;
  }
}

@media (width < 888px)
{
  * {
    font-size: 100%;
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
  
  .footer {
    padding: 10px 20px;
  }
  
  .footer .box-container .box h3, .footer .box-container .box a{
    font-size: 14px;
  }
  
  /* END NAVBAR */
  .basket{
    /* transform: scale(0.8); */
    width: 300px;
    margin: auto;
  }

  main .basketmain
  {
    flex-direction: column;
  }
  
  .basket li{
    font-size: 14px;
  }
  
  .price, .subtotal{
    font-size: 12px;
    overflow: visible;
  }

  aside
  {
    padding: 30px 0;
    width: 100%;
    display: flex;
    justify-content: center;
  }

  .summary{
    /* width: fit-content; */
    margin: auto;
  }

  ul, ul li
  {
    justify-content: space-between;
    align-items: start;
  }

  .basket-product
  {
    justify-content: space-between;
  }
}


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

  .footer {
    padding: 10px 20px;
  }

  .footer .box-container .box h3, .footer .box-container .box a{
    font-size: 14px;
  }

  /* END NAVBAR */

  .basket{
    /* transform: scale(0.8); */
    /* width: 400px; */
    min-width: fit-content;
    overflow: visible;
    padding: 0;
  }

  main .basketmain
  {
    width: 300px;
  }

  .basket-product
  {
    display: flex;
    justify-content: space-between;
    gap: 0;
  }

  main{
    margin: auto;
    width: fit-content;
    padding-top: 30px;
  }

  .item
  {
    width: 100px;
  }
 
  .basket li {
    font-size: 12px;
  };
}
  </style> 
  </head>

<body>
  <div class="navbarbg">
    <h2>YASRIMAN</h2>
    <div class="logintext">
      <div class="searchdiv">
        <img src="https://svgshare.com/i/177L.svg" alt="" />
        <input
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
      <a href="./product.jsp">PRODUCTS</a>
      <!-- <a href="./information.html">INFORMATION</a> -->
      <!-- <a href="./faq.html">FAQ</a> -->
      <a href="./viewcart.jsp" class="active">CART</a>
    </div>
  </div>

  <main>
    <h2>MY CART</h2>
    <div class="basketmain">
    <div class="basket">
      <div class="basket-labels">
        <ul>
          <li class="item item-heading">Item</li>
          <li class="price">Price</li>
          <li class="quantity">Quantity</li>
          <li class="subtotal">Subtotal</li>
        </ul>
      </div>
      <div id="cartItems" class="basket-products"></div>
    
</div>
<aside>
      <div class="summary">
          <div class="summary-total-items"><span class="total-items"></span> Items in your Bag</div>
          <div class="summary-subtotal">
              <div class="subtotal-title">Subtotal</div>
              <div class="subtotal-value final-value" id="basket-subtotal">0.00</div>
          </div>
          <div class="summary-delivery">
            <select name="delivery-collection" class="summary-delivery-selection">
              <option value="0" selected="selected">Select Collection or Delivery</option>
              <option value="cod">Cash On Delivery</option>
              <option value="poslaju">Poslaju</option>
              <option value="jnt">JNT</option>
              <option value="ninjavan">Ninja Van</option>
            </select>
          </div>
          <div class="shippingfee">Shipping Fee: RM0.00</div>
          <div class="summary-total">
              <div class="total-title">Total</div>
              <div class="total-value final-value" id="basket-total">0.00</div>
          </div>
          <div class="summary-checkout">
              <button class="checkout-cta" onclick="goToPaymentPage()">Go to Secure Checkout</button>
          </div>
      </div>
  </aside>
  </div>
    
  </main>
  <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
  <script src="./js/viewcart.js"></script>
  <script type="text/javascript">
//viewcart.js
  document.addEventListener('DOMContentLoaded', function () {
    const cartItemsContainer = document.getElementById('cartItems');
    const cartTotal = document.getElementById('basket-total');
    const cartSubtotal = document.getElementById('basket-subtotal');
    const totalItems = document.querySelector('.total-items');
    const deliverySelection = document.querySelector('.summary-delivery-selection');
    const shippingFeeText = document.querySelector('.shippingfee');

    let cart = JSON.parse(localStorage.getItem('cart')) || [];
    let shippingFee = 0;

    function renderCart() {
        cartItemsContainer.innerHTML = '';
        let subtotal = 0;
        let totalItemCount = 0;

        cart.forEach(item => {
            const itemTotal = item.price * item.quantity;
            subtotal += itemTotal;
            totalItemCount += item.quantity;

            const productElement = document.createElement('div');
            productElement.classList.add('basket-product');
            productElement.innerHTML = `
                <div class="item">
                    <div class="product-image">
                        <img src="${item.imgSrc}" alt="${item.title}" class="product-frame" width="120" height="auto">
                    </div>
                    <div class="product-details">
                        <h1>${item.title}</h1>
                    </div>
                </div>
                <div class="price">${item.price.toFixed(2)}</div>
                <div class="quantity">
                    <input type="number" value="${item.quantity}" min="1" class="quantity-field">
                </div>
                <div class="subtotal">${itemTotal.toFixed(2)}</div>
                <div class="remove">
                    <button>Remove</button>
                </div>
            `;

            const quantityField = productElement.querySelector('.quantity-field');
            quantityField.addEventListener('change', function () {
                updateQuantity(item, quantityField.value);
            });

            const removeButton = productElement.querySelector('.remove button');
            removeButton.addEventListener('click', function () {
                removeItem(item);
            });

            cartItemsContainer.appendChild(productElement);
        });

        updateTotals(subtotal);
        totalItems.textContent = totalItemCount;
    }

    function updateTotals(subtotal) {
        const total = subtotal + shippingFee;
        cartSubtotal.textContent = `${subtotal.toFixed(2)}`;
        cartTotal.textContent = `${total.toFixed(2)}`;
    }

    function updateQuantity(item, newQuantity) {
        item.quantity = parseInt(newQuantity, 10);
        localStorage.setItem('cart', JSON.stringify(cart));
        renderCart();
    }

    function removeItem(item) {
        cart = cart.filter(cartItem => cartItem.title !== item.title);
        localStorage.setItem('cart', JSON.stringify(cart));
        renderCart();
    }

    function updateShippingFee() {
        const selectedOption = deliverySelection.value;
        switch (selectedOption) {
            case 'cod':
                shippingFee = 0;
                shippingFeeText.textContent = 'Shipping Fee: RM0.00';
                break;
            case 'poslaju':
                shippingFee = 15.0;
                shippingFeeText.textContent = 'Shipping Fee: RM15.00';
                break;
            case 'jnt':
                shippingFee = 10.0;
                shippingFeeText.textContent = 'Shipping Fee: RM10.00';
                break;
            case 'ninjavan':
                shippingFee = 12.0;
                shippingFeeText.textContent = 'Shipping Fee: RM12.00';
                break;
            default:
                shippingFee = 0;
                shippingFeeText.textContent = 'Shipping Fee: RM0.00';
                break;
        }
        renderCart();
    }

    deliverySelection.addEventListener('change', updateShippingFee);

    renderCart();
  });

  function goToPaymentPage() {
      const total = parseFloat(document.getElementById('basket-subtotal').textContent);
      const deliverySelection = document.querySelector('.summary-delivery-selection');
      const selectedOption = deliverySelection.value;

      if (total === 0) {
          alert("Your cart cannot be empty.");
      } else if (selectedOption === "0") {
          alert("Please select a delivery option.");
      } else {
          const basketSubtotal = document.getElementById('basket-subtotal').textContent;
          const basketTotal = document.getElementById('basket-total').textContent;
          const shippingFee = document.querySelector('.shippingfee').textContent.replace('Shipping Fee: RM', '');

          localStorage.setItem('subtotal', basketSubtotal);
          localStorage.setItem('total', basketTotal);
          localStorage.setItem('shipping', shippingFee);

          window.location.href = 'payment.html';
      }
    }
  </script>
</body>

</html>
