<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>My Account</title>

    <link href="css/bootstrap.min.css" rel="stylesheet" type='text/css'>
    <link href='fonts/font-awesome/css/font-awesome.min.css' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900,300italic,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='fonts/lovelo/stylesheet.css' rel='stylesheet' type='text/css'>

    <link href='css/owl.carousel.css' rel='stylesheet' type='text/css'>
    <link href='css/owl.theme.css' rel='stylesheet' type='text/css'>
    <link href="css/custom.css" rel="stylesheet" type='text/css'>

    <!--[if lt IE 9]>
    <script src="js/html5shiv.min.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
</head>
<body>
<!--Start class site-->
<div class="tz-site">

    <!--Start id tz header-->
    <header id="tz-header" class="bk-white">
        <div class="container">

            <!--Start class header top-->
            <div class="header-top">
                <ul class="pull-left">
                    <li>
                        <a href="#">
                            USD
                            <span class="fa fa-angle-down tz-down"></span>
                        </a>
                        <ul class="sub-menu">
                            <li>
                                <a href="#">EURO</a>
                            </li>
                            <li>
                                <a href="#">USD</a>
                            </li>
                            <li>
                                <a href="#">EGP</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">
                            English
                            <span class="fa fa-angle-down tz-down"></span>
                        </a>
                    </li>
                    <li>
                        <a href="#">Call us:   (012) 3456 7890</a>
                    </li>
                </ul>
                <ul class="pull-right">
                    <li>
                        <a href="shop-register.html">My Account</a>
                    </li>
                    <li>
                        <a href="#">Wishlist</a>
                    </li>
                    <li>
                        <a href="shop-cart.html">My Cart</a>
                    </li>
                    <li>
                        <a href="shop-checkout.html">Checkout</a>
                    </li>
                    <li class="tz-header-login">
                        <a href="#">Login</a>
                        <div class="tz-login-form">
                            <form>
                                <p class="form-content">
                                    <label for="username">Username / Email</label>
                                    <input type="text" name="username" id="username" value="">
                                </p>
                                <p class="form-content">
                                    <label for="password">Password</label>
                                    <input type="password" name="username" id="password" value="">
                                </p>
                                <p class="form-footer">
                                    <a href="#">Lost Password?</a>
                                    <button type="submit" class="pull-right button_class">LOGIN</button>
                                </p>
                                <p class="form-text">
                                    Don't have an account? <a href="shop-register.html">Register Here</a>
                                </p>
                            </form>
                        </div>
                    </li>
                </ul>
            </div>
            <!--End class header top-->

            <!--Start header content-->
            <div class="header-content">
                <h3 class="tz-logo pull-left"><a href="index.html"><img src="images/logo.png" alt="home" /></a></h3>
                <div class="tz-search pull-right">

                    <!--Start form search-->
                    <form>
                        <label class="select-arrow">
                            <select name="category">
                                <option value="">All Category</option>
                                <option value="#">Baby Seats</option>
                                <option value="#">Halfwheelers</option>
                                <option value="#">Locks/Security</option>
                                <option value="#">WheelSystems</option>
                                <option value="#">Rim Tape</option>
                            </select>
                        </label>
                        <input type="text" class="tz-query" id="tz-query" value="" placeholder="Search for product">
                        <button type="submit"></button>
                    </form>
                    <!--End Form search-->

                    <!--live search-->
                    <div class="live-search">
                        <ul>
                            <li>
                                <div class="live-img"><img src="images/product/product-search1.jpg" alt="product search one"></div>
                                <div class="live-search-content">
                                    <h6><a href="single-product.html">Defy Advanced</a></h6>
                                    <span class="live-meta">
                                        <a href="single-product.html">$2650.00</a>
                                        <span class="product-color">
                                            <i class="light-blue"></i>
                                            <i class="orange"></i>
                                            <i class="orange-dark"></i>
                                        </span>
                                    </span>
                                </div>
                            </li>
                            <li>
                                <div class="live-img"><img src="images/product/product-search2.jpg" alt="product search two"></div>
                                <div class="live-search-content">
                                    <h6><a href="single-product.html">Defy Advanced</a></h6>
                                    <span class="live-meta">
                                        <a href="single-product.html">$2650.00</a>
                                        <span class="product-color">
                                            <i class="light-blue"></i>
                                            <i class="orange"></i>
                                            <i class="blueviolet"></i>
                                            <i class="orange-dark"></i>
                                        </span>
                                    </span>
                                </div>
                            </li>
                            <li>
                                <div class="live-img"><img src="images/product/product-search3.jpg" alt="product search one"></div>
                                <div class="live-search-content">
                                    <h6><a href="single-product.html">Defy Advanced</a></h6>
                                    <span class="live-meta">
                                        <a href="single-product.html">$2650.00</a>
                                        <span class="product-color">
                                            <i class="blueviolet"></i>
                                            <i class="light-blue"></i>
                                            <i class="orange-dark"></i>
                                            <i class="orange"></i>
                                        </span>
                                    </span>
                                </div>
                            </li>
                        </ul>
                    </div>
                    <!--End live search-->
                </div>
            </div>
            <!--End class header content-->
        </div>

        <!--Start main menu -->
        <nav class="tz-menu-primary">
            <div class="container">

                <!--Main Menu-->
                <ul class="tz-main-menu pull-left nav-collapse">
                    <li>
                        <a href="index.html">Home</a>
                        <ul class="sub-menu">
                            <li>
                                <a href="home-boxed.html">Home Boxed</a>
                            </li>
                            <li>
                                <a href="mega-menu.html">Mega Menu</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="shop.html">
                            category
                            <span class="red-light">On sale!</span>
                        </a>
                    </li>
                    <li>
                        <a href="shop.html">Bikes</a>
                    </li>
                    <li>
                        <a href="shop.html">Gear</a>
                    </li>
                    <li>
                        <a href="shop.html">Shop</a>
                        <ul class="sub-menu">
                            <li>
                                <a href="shop-rightsidebar.html">Shop Right</a>
                            </li>
                            <li>
                                <a href="shop-cart.html">Shop Cart</a>
                            </li>
                            <li>
                                <a href="shop-checkout.html">Shop Checkout</a>
                            </li>
                            <li>
                                <a href="shop-register.html">Shop Register</a>
                            </li>
                            <li>
                                <a href="single-product.html">Shop Single</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="blog.html">
                            Blog
                            <span class="cyan-dark">Best off!</span>
                        </a>
                        <ul class="sub-menu">
                            <li>
                                <a href="blog-right.html">Blog Right</a>
                            </li>
                            <li>
                                <a href="single-blog.html">Blog Single</a>
                            </li>
                        </ul>
                    </li>
                    <li>
                        <a href="contact.html">Contact</a>
                    </li>
                </ul>
                <!--End Main menu-->

                <!--Shop meta-->
                <ul class="tz-ecommerce-meta pull-right">
                    <li class="tz-menu-wishlist">
                        <a href="#"><strong>0</strong></a>
                    </li>
                    <li class="tz-mini-cart">
                        <a href="shop-cart.html"><strong>2</strong>Cart : $199.00</a>

                        <!--Mini cart-->
                        <ul class="cart-inner">
                            
                            
                            
                            <li class="mini-cart-content">
                                <div class="mini-cart-img"><img src="images/product/product-cart2.png" alt="product search one"></div>
                                <div class="mini-cart-ds">
                                    <h6><a href="single-product.html">City Pedals Sport</a></h6>
                                    <span class="mini-cart-meta">
                                        <a href="single-product.html">$2650.00</a>
                                        <span class="mini-meta">
                                           <span class="mini-color">Color: <i class="orange"></i></span>
                                           <span class="mini-qty">Qty: 5</span>
                                        </span>
                                    </span>
                                </div>
                                <span class="mini-cart-delete"><img src="images/delete.png" alt="delete"></span>
                            </li>
                            <li class="mini-cart-content">
                                <div class="mini-cart-img"><img src="images/product/product-cart3.png" alt="product search one"></div>
                                <div class="mini-cart-ds">
                                    <h6><a href="single-product.html">Gloss</a></h6>
                                    <span class="mini-cart-meta">
                                        <a href="single-product.html">$2650.00</a>
                                        <span class="mini-meta">
                                           <span class="mini-color">Color: <i class="orange"></i></span>
                                           <span class="mini-qty">Qty: 5</span>
                                        </span>
                                    </span>
                                </div>
                                <span class="mini-cart-delete"><img src="images/delete.png" alt="delete"></span>
                            </li>
                            <li class="mini-subtotal">
                                <span class="subtotal-content">
                                    Subtotal:
                                    <strong class="pull-right">$1,100.00</strong>
                                </span>
                            </li>
                            <li class="mini-footer">
                                <a href="shop-cart.html" class="view-cart">View Cart</a>
                                <a href="shop-checkout.html" class="check-out">Checkout</a>
                            </li>
                        </ul>
                        <!--End mini cart-->

                    </li>
                </ul>
                <!--End Shop meta-->

                <!--navigation mobi-->
                <button data-target=".nav-collapse" class="btn-navbar tz_icon_menu" type="button">
                    <i class="fa fa-bars"></i>
                </button>
                <!--End navigation mobi-->
            </div>
        </nav>
        <!--End stat main menu-->

    </header>
    <!--End id tz header-->

    <section class="shop-checkout">
        <div class="container">
            <!--Start Breadcrumbs-->
            <ul class="tz-breadcrumbs">
                <li>
                    <a href="#">Home</a>
                </li>
                <li class="current">
                    My Account
                </li>
            </ul>
            <!--End Breadcrumbs-->
            <h1 class="page-title">My account</h1>

            <!--Start form table-->
             <form:form action="updatecart" modelAttribute="cartform" method="post" >
                <table class="shop_table cart">
                    <!--Table header-->
                    <thead>
                        <tr>
                            <th class="product-remove">&nbsp;</th>
                            <th class="product-thumbnail">Product</th>
                            <th class="product-name">&nbsp;</th>
                            <th class="product-price">Price</th>
                            <th class="product-quantity">Quantity</th>
                            <th class="product-subtotal">Date</th>
                            <th class="product-subtotal">Status</th>
                        </tr>
                    </thead>
                    <!--End table header-->

                    <!--Table body-->
                    <tbody>
  <c:forEach items="${orders}" var="order">
                        <tr class="cart_item">
                            <td class="product-remove">
                                <a href="removefromcart?id=<c:out value='${order.id}'/>" class="remove" title="Remove this item"></a>
                            </td>
                            <td class="product-thumbnail">
                                <a href="single-product.html"><img src="images/product/widget1.jpg" alt="cart" /></a>
                            </td>

                            <td class="product-name">
                                <a href="single-product.html"><c:out value="${order.productid.title}"/> </a>
                                <span class="color">
                                </span>
                                    Color: <i class="orange"></i>
                            </td>
                             
                            <td class="product-price">
                                <span class="amount"><c:out value="${order.price}"/> </span>
                            </td>

                            <td class="product-quantity">
                                <div class="quantity">
                                <span class="amount"><c:out value="${order.quantity}"/> </span>
                              <!--  
                                <input type="text"  name="cart" title="Qty" id="<c:out value='cart.cartList${status.index}.quantity'/>" name="<c:out value='cartList${status.index}.quantity'/>" class="input-text qty text" size="4" value="<c:out value='${cart.quantity}'/>"/>
                                -->
                                </div>
                            </td>

                            <td class="product-subtotal">
                                <span class="amount">
                                <fmt:formatDate value="${dateValue}" pattern="MM/dd/yyyy HH:mm"/>
                                <c:out value="${order.purchasedate}"  /></span>
                            </td>
                            <td class="product-subtotal">
                                <span class="amount"><c:out value="${order.status}" /></span>
                            </td>
                        </tr>
                        </c:forEach>
                        <!-- <tr class="cart_item">
                            <td class="product-remove">
                                <a href="#" class="remove fa-" title="Remove this item"></a>
                            </td>
                            <td class="product-thumbnail">
                                <a href="single-product.html"><img src="images/product/widget2.jpg" alt="cart" /></a>
                            </td>

                            <td class="product-name">
                                <a href="single-product.html">City Pedals Sport </a>
                                <span class="color">
                                    Color: <i class="light-blue"></i>
                                </span>
                            </td>
                            <td class="product-price">
                                <span class="amount">$20.00</span>
                            </td>

                            <td class="product-quantity">
                                <div class="quantity"><input type="number" step="1" min="0" name="cart" value="1" title="Qty" class="input-text qty text" size="4"></div>
                            </td>

                            <td class="product-subtotal">
                                <span class="amount">$229.00</span>
                            </td>
                        </tr>
                        <tr class="cart_item">
                            <td class="product-remove">
                                <a href="#" class="remove fa-" title="Remove this item"></a>
                            </td>
                            <td class="product-thumbnail">
                                <a href="single-product.html"><img src="images/product/widget3.jpg" alt="cart" /></a>
                            </td>

                            <td class="product-name">
                                <a href="single-product.html">Gloss </a>
                                <span class="color">
                                    Color: <i class="red-light"></i>
                                </span>
                            </td>
                            <td class="product-price">
                                <span class="amount">$20.00</span>
                            </td>

                            <td class="product-quantity">
                                <div class="quantity"><input type="number" step="1" min="0" name="cart" value="1" title="Qty" class="input-text qty text" size="4"></div>
                            </td>

                            <td class="product-subtotal">
                                <span class="amount">$229.00</span>
                            </td>
                        </tr>
                         
                        <tr>
                            <td class="actions" colspan="6">
                                <a class="back-shop" href="#"><i class="fa fa-angle-left"></i> BACK TO SHOP</a>
                                <button class="update-cart" type="submit">update cart</button>
                            </td>
                        </tr>-->

                    </tbody>
                    <!--End table body-->
                </table>
            </form:form>
            <!--End form table-->

            <!--Cart attr-->
            <!-- <div class="row">
                <div class="col-md-6 col-sm-6">
                    
                    <div class="coupon">
                        <h3>Coupon</h3>
                        <form>
                            <p>Enter your coupon code if you have one.</p>
                            <input type="text" name="coupon_code" class="input-text" id="coupon_code" value="" placeholder="Coupon code">
                            <input type="submit" class="button" name="apply_coupon" value="Apply Coupon">
                        </form>
                    </div> 
                  
                </div> -->
                <div class="col-md-6 col-sm-6">

                    <!--Cart totals-->
                      <!--<div class="cart_totals">
                        <div class="cart_totals_inner">
                            <table>
                                <tbody>
                                    <tr class="cart-subtotal">
                                        <th>Subtotal</th>
                                        <td><span class="amount"><c:out value="${subtotal}"/></span></td>
                                    </tr>
                                   <tr class="shipping">
                                        <th>Shipping and handling</th>
                                        <td>
                                            <form class="shop-shipping-calculator"  method="post">
                                               <p class="form-r">
                                                   <input type="checkbox" name="rate" value="1" />
                                                   <span>
                                                       Flat Rate:
                                                       <span class="price">
                                                           $30.00
                                                       </span>
                                                   </span>
                                               </p>
                                                <p class="form-r">
                                                    <input type="checkbox" name="international" value="1" />
                                                   <span>
                                                       International Delivery:
                                                       <span class="price">
                                                           $150.00
                                                       </span>
                                                   </span>
                                                </p>
                                                <p class="form-r">
                                                    <input type="checkbox" name="rate" value="1" />
                                                   <span>
                                                       Local Delivery:
                                                       <span class="price">
                                                           $90.00
                                                       </span>
                                                   </span>
                                                </p>
                                                <p class="form-r">
                                                    <input type="checkbox" name="pickup" value="1" />
                                                   <span>Local Pickup (Free)</span>
                                                </p>
                                            </form>
                                        </td>
                                    </tr>
                                    <tr class="order-total">
                                        <th>Order total</th>
                                        <td><span class="amount"><c:out value="${subtotal}"/></span></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                    </div> -->
                    <!--End cart totals-->

                </div>
            </div>
            <!--End cart attr-->
        </div>
    </section>

    <!--Start Footer-->
    <footer class="tz-footer">
        <div class="footer-widget">
            <div class="container">

                <!--Start footer left-->
                <div class="footer-left">
                    <div class="contact-info widget">
                        <h3 class="widget-title">Contact info</h3>
                        <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium</p>
                        <ul>
                            <li>
                                <span>Address :</span>
                                <address>
                                    123 Sky Tower address name, Los Algeles, ,<br> USA, Country, 01234
                                </address>
                            </li>
                            <li>
                                <span>Phone :</span>
                                (012) 345 6789
                            </li>
                            <li>
                                <span>Email :</span>
                                info@templaza.com
                            </li>
                        </ul>
                    </div>
                    <div class="widget">
                        <form class="tz-subcribe">
                            <input type="text" name="sub" value="" placeholder="Enter your email...">
                            <input type="submit" name="subscribe" value="Subscribe">
                        </form>
                    </div>
                    <div class="widget">
                        <ul class="tz-social">
                            <li>
                                <a class="fa fa-facebook" href="#"></a>
                            </li>
                            <li>
                                <a class="fa fa-twitter" href="#"></a>
                            </li>
                            <li>
                                <a class="fa fa-google-plus" href="#"></a>
                            </li>
                            <li>
                                <a class="fa fa-tumblr" href="#"></a>
                            </li>
                            <li>
                                <a class="fa fa-flickr" href="#"></a>
                            </li>
                            <li>
                                <a class="fa fa-pinterest" href="#"></a>
                            </li>
                        </ul>
                    </div>
                </div>
                <!--End footer left-->

                <!--Start footer right-->
                <div class="footer-right">
                    <div class="tz-widget-clients widget">
                        <h3 class="widget-title">What clients say?</h3>
                        <div class="tz-widget-say">
                            <img src="images/say.jpg" alt="Kathy Young">
                            <div class="entry-say">
                                <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor     incididunt ut labore et dolore magna aliqua.</p>
                                <span>Kathy Young</span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <div class="widget widget_nav_menu">
                                <h3 class="widget-title">HOW TO BUY</h3>
                                <ul>
                                    <li>
                                        <a href="#">Contact Us</a>
                                    </li>
                                    <li>
                                        <a href="#">Returns</a>
                                    </li>
                                    <li>
                                        <a href="#">Site Map</a>
                                    </li>
                                    <li>
                                        <a href="#">Brands</a>
                                    </li>
                                    <li>
                                        <a href="#">Gift Vouchers</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="widget widget_nav_menu">
                                <h3 class="widget-title">MY ACCOUNT</h3>
                                <ul>
                                    <li>
                                        <a href="#">My Account</a>
                                    </li>
                                    <li>
                                        <a href="#">Order History</a>
                                    </li>
                                    <li>
                                        <a href="#">Wish List</a>
                                    </li>
                                    <li>
                                        <a href="#">Newsletter</a>
                                    </li>
                                    <li>
                                        <a href="#">Specials</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                        <div class="col-md-4">
                            <div class="widget widget_nav_menu">
                                <h3 class="widget-title">Infomation</h3>
                                <ul>
                                    <li>
                                        <a href="#">About Us</a>
                                    </li>
                                    <li>
                                        <a href="#">Returns</a>
                                    </li>
                                    <li>
                                        <a href="#">Contact Us</a>
                                    </li>
                                    <li>
                                        <a href="#">Term & Conditions</a>
                                    </li>
                                    <li>
                                        <a href="#">Privacy Policy</a>
                                    </li>
                                </ul>
                            </div>
                        </div>
                    </div>
                </div>
                <!--End footer right-->

            </div>
        </div>
        <div class="tz-copyright">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-sm-6">
                        <p>Copyright &copy; 2015 <a href="http://templaza.com/" target="_blank">BikeSport</a> by TemPlaza. All rights reserved.</p>
                    </div>
                    <div class="col-md-6 col-sm-6">
                        <div class="pull-right">
                        <span class="payments-method">
                            <a href="#"><img src="images/Visa.png" alt="visa"></a>
                            <a href="#"><img src="images/Intersection.png" alt="Intersection"></a>
                            <a href="#"><img src="images/ebay.png" alt="ebay"></a>
                            <a href="#"><img src="images/Amazon.png" alt="Amazon"></a>
                            <a href="#"><img src="images/Discover.png" alt="Discover"></a>
                        </span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!--End Footer-->

</div><!--End class site-->

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/off-canvas.js"></script>
<!--jQuery Countdow-->
<script src="js/jquery.plugin.min.js"></script>
<script src="js/jquery.countdown.min.js"></script>
<!--End Countdow-->

<script src="js/owl.carousel.js"></script>
<script src="js/custom.js"></script>

</body>
</html>