<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Checkout</title>

    <link href="css/bootstrap.min.css" rel="stylesheet" type='text/css'>
    <link href='fonts/font-awesome/css/font-awesome.min.css' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Lato:300,400,700,900,300italic,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='fonts/lovelo/stylesheet.css' rel='stylesheet' type='text/css'>

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
                                <div class="mini-cart-img"><img src="images/product/product-cart1.png" alt="product search one"></div>
                                <div class="mini-cart-ds">
                                    <h6><a href="single-product.html">Liv Race Day Short</a></h6>
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

    <section class="shop-cart">
        <div class="container">
            <!--Start Breadcrumbs-->
            <ul class="tz-breadcrumbs">
                <li>
                    <a href="#">Home</a>
                </li>
                <li class="current">
                    Checkout
                </li>
            </ul>
            <!--End Breadcrumbs-->

            <div class="row">
                <div class="col-md-6">
                    <h1 class="page-title">Checkout</h1>

                    <!--Shop info-->
                    <div class="shop-info">
                        <p>Returning customer? <a href="#">Click here to login</a></p>
                        <p>Have a coupon?  <a href="#">Click here to enter your code</a></p>
                    </div>
                    <!--End shop info-->

                    <!--Start form checkout-->
                    <form:form action="saveuserdetails" modelAttribute="userDetailsForm" method="post" >
                        <div class="shop-billing-fields">
                            <h3>Billing Details</h3>
                            <p class="form-row">
                                <label>Country <span class="required">*</span></label>
                                <form:select path="country">
                                    <option value="IN">India (IN)</option>
                                </form:select>
                            </p>
                            <p class="form-row form-row-first">
                                <label for="first_name" class="">First Name <span class="required">*</span></label>
                                <form:input path="first_name" type="text" class="input-text " name="first_name" id="first_name" placeholder="" value=""/>
                                <form:errors path="first_name"/>
                            </p>
                            <p class="form-row form-row-last">
                                <label for="last_name" class="">Last Name <span class="required">*</span></label>
                                <form:input path="last_name" type="text" class="input-text " name="last_name" id="last_name" placeholder="" value=""/>
                                <form:errors path="last_name"/>
                            </p>
                            <div class="clear"></div>
                            <p class="form-row">
                                <label for="company">Company Name</label>
                                <form:input path="company_name" type="text" class="input-text " name="company_name" id="company_name" placeholder="" value=""/>
                                <form:errors path="company_name"/>
                            </p>
                            <p class="form-row">
                                <label for="address">Address  <span class="required">*</span></label>
                                <form:input path="address" type="text" class="input-text " name="address" id="address" placeholder="" value=""/>
                                <form:errors path="address"/>
                            </p>
                            <p class="form-row">
                                <label for="city">Town / City<span class="required">*</span></label>
                                <form:input path="city" type="text" class="input-text " name="city" id="city" placeholder="" value=""/>
                                <form:errors path="city" />
                            </p>
                            <p class="form-row form-row-first">
                                <label for="state">State <span class="required">*</span></label>
                                <form:input path="state" type="text" class="input-text " name="state" id="state" placeholder="" value=""/>
                                <form:errors path="state" />
                            </p>
                            <p class="form-row form-row-last">
                                <label for="zip">Zip  <span class="required">*</span></label>
                                <form:input path="zip" type="text" class="input-text " name="zip" id="zip" placeholder="" value=""/>
                                <form:errors path="zip" />
                            </p>
                            <div class="clear"></div>
                            <p class="form-row form-row-first">
                                <label for="email">Email Address<span class="required">*</span></label>
                                <form:input path="email" type="email" class="input-text " name="email" id="email" placeholder="" value=""/>
                                <form:errors path="email" />
                            </p>
                            <p class="form-row form-row-last">
                                <label for="phone">Phone  <span class="required">*</span></label>
                                <form:input path="phone" type="text" class="input-text " name="phone" id="phone" placeholder="" value=""/>
                                <form:errors path="phone" />
                            </p>
                            <div class="clear"></div>
                            <p class="form-row create-account">
                                <form:checkbox path="createaccount" class="createaccount" id="createaccount" name="createaccount" value="1"/> <label for="createaccount" class="checkbox">Create an account?</label>
                            </p>
                            <p class="form-row ship-to-different-address-checkbox">
                                <form:checkbox path="shiptodifferentaddress" class="input-checkbox" id="shiptodifferentaddress" name="shiptodifferentaddress" value="1"/>
                                <label for="shiptodifferentaddress" class="ship-to-different-address-checkbox">Ship to a different address?</label>
                            </p>
                            <p class="form-row notes">
                                <label for="ordernotes" class="">Order Notes</label>
                                <form:textarea path="ordernotes" name="ordernotes" class="input-text " id="ordernotes" placeholder="Notes about your order, e.g. special notes for delivery." rows="2" cols="5"/>
                            </p>
                            <p class="comment-for-submit">
                                    <input name="submit" type="submit" id="submit" class="submit" value="Submit form">
                            </p>
                        </div>
                    </form:form>
                    <!--End form checkout-->

                </div>
                <div class="col-md-6">

                    <!--Order review-->
                    <div id="order_review">
                        <h3>Your Order</h3>

                        <!--Shop table-->
                        <table class="shop_table">
                            <thead>
                                <tr>
                                    <th class="product-name">Product</th>
                                    <th class="product-total">Total</th>
                                </tr>
                            </thead>
                            <tbody>
                            <c:forEach items="${cart}" var="cartItem">
                            	<tr class="cart_item">
                                    <td class="product-name">
                                     	<c:out value="${cartItem.title}" />
                                        <strong class="product-quantity"><c:out value="${cartItem.quantity}" /></strong>
                                    </td>
                                    <td class="product-total">
                                        <span class="amount"><c:out value="${cartItem.quantity * cartItem.sellingPrice}"/></span>
                                    </td>
                                	</tr>
                            </c:forEach>
                                
                            </tbody>
                            <tfoot>
                            <tr class="cart-subtotal">
                                <th>Cart Subtotal</th>
                                <td><span class="amount"><c:out value="${subtotal}"/></span></td>
                            </tr>

                            <tr class="shipping">
                                <th>Shipping and Handling</th>
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
                                <th>Order Total</th>
                                <td><strong><span class="amount">$520.00</span></strong> </td>
                            </tr>
                            </tfoot>
                        </table>
                        <!--End shop table-->

                        <!--Start payment-->
                        <div id="payment" class="checkout-payment">
                            <ul class="payment_methods methods">
                                <li class="payment_method_bacs">
                                    <input id="payment_method_bacs" type="radio" class="input-radio" name="payment_method" value="bacs" checked="checked">

                                    <label for="payment_method_bacs">
                                        Direct Bank Transfer
                                    </label>
                                    <div class="payment_box payment_method_bacs">
                                        <p>Make your payment directly into our bank account. Please use your Order ID as the payment reference. Your order won’t be shipped until the funds have cleared in our account.</p>
                                    </div>
                                </li>
                                <li class="payment_method_cheque">
                                    <input id="payment_method_cheque" type="radio" class="input-radio" name="payment_method" value="cheque">
                                    <label for="payment_method_cheque">
                                        Cheque Payment
                                    </label>
                                </li>
                                <li class="payment_method_paypal">
                                    <input id="payment_method_paypal" type="radio" class="input-radio" name="payment_method" value="paypal">
                                    <label for="payment_method_paypal">
                                        PayPal
                                    </label>
                                </li>
                            </ul>

                            <div class="clear"></div>
                        </div>
                        <!--End payment-->

                    </div>
                    <!--End order review-->

                </div>
            </div>

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
<script src="js/custom.js"></script>

</body>a
</html>