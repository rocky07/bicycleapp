<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
        <!--Start id tz header-->
        <header id="tz-header" class="bk-white">
            <div class="container">

                <!--Start class header top-->
                <div class="header-top">
                    <ul class="pull-left">
                        <li>
                            <a href="#">
                                INR
                                <span class="fa fa-angle-down tz-down"></span>
                            </a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="#">INR</a>
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
                            <a href="#">Call us:   (091) 9846 95268</a>
                        </li>
                    </ul>
                    <ul class="pull-right">
                        <li>
                            <a href="my-account.html">My Account</a>
                        </li>
                        <li>
                            <a href="shop-wishlist.html">Wishlist</a>
                        </li>
                        <li>
                            <a href="shop-cart.html">My Cart</a>
                        </li>
                        <li>
                            <a href="shop-checkout.html">Checkout</a>
                        </li>
                       <c:choose>
                    <c:when test="${sessionScope.user eq null}">
                    <li class="tz-header-login">
                        <a href="#">Login</a>
                        <div class="tz-login-form">
                            <form ACTION="login" method="post">
                                <p class="form-content">
                                    <label for="username">Username / Email</label>
                                    <input type="text" name="username" id="username" value="">
                                </p>
                                <p class="form-content">
                                    <label for="password">Password</label>
                                    <input type="password" name="password" id="password" value="">
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
                    </c:when>
                    <c:otherwise>
                    <li>
                        <a href="logout">logout <a href="logout"> <c:out value="${user.name}"/></a></a>
                    </li>
                    </c:otherwise>
                    </c:choose>
                    </ul>
                </div>
                <!--End class header top-->

                <!--Start header content-->
                <div class="header-content">
                    <h3 class="tz-logo pull-left"><a href="index.html"><img src="images/logo.png" alt="home" /></a></h3>
                    <div class="tz-search pull-right">

                        <!--Start form search-->
                        <!-- 
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
                         -->
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
                            <!-- <ul class="sub-menu">
                                <li>
                                    <a href="home-boxed.html">Home Boxed</a>
                                </li>
                                <li>
                                    <a href="mega-menu.html">Mega Menu</a>
                                </li>
                            </ul> -->
                        </li>
                        <!--<li>
                            <a href="shop.html">
                                category
                                <span class="red-light">On sale!</span>
                            </a>
                        </li>-->
                        <li>
                            <a href="shop.html">Bikes
                            	<span class="red-light">On sale!</span>
                            </a>
                        </li>
                        <!--<li>
                            <a href="shop.html">Gear</a>
                        </li>
                        <li>
                            <a href="shop.html">Shop</a>
                            <ul class="sub-menu">
                                <li>
                                    <a href="shop-rightsidebar">Shop Right</a>
                                </li>
                                <li>
                                    <a href="shop-cart">Shop Cart</a>
                                </li>
                                <li>
                                    <a href="shop-checkout">Shop Checkout</a>
                                </li>
                                <li>
                                    <a href="shop-register">Shop Register</a>
                                </li>
                                <li>
                                    <a href="single-product">Shop Single</a>
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
                        </li>-->
                        <li>
                            <a href="contact">Contact</a>
                        </li>
                    </ul>
                    <!--End Main menu-->
              <!--End Main menu-->

                <!--Shop meta-->
                <ul class="tz-ecommerce-meta pull-right">
                    <!-- <li class="tz-menu-wishlist">
                        <a href="#"><strong>0</strong></a>
                    </li> -->
                    <li class="tz-mini-cart">
                        <a href="shop-cart.html"><!-- <strong>2</strong> -->Cart : <span style='font-family:Arial;'>&#8377;</span><c:out value="${sessionScope.sbt eq null ? 0 : sessionScope.sbt}"/></a>

                        <!--Mini cart-->
                        <ul class="cart-inner">
                        <c:forEach items="${sessionScope.cartvalues}" var="cartitem">
                            <li class="mini-cart-content">
                                <!-- <div class="mini-cart-img">
                                	<img src="images/product/product-cart1.png" alt="product search one">
                                </div> -->
                                <div class="mini-cart-ds">
                                    <h6><a href="shop-product.html?id=<c:out value='${cartitem.productId}' />"><c:out value="${cartitem.title}"></c:out></a></h6>
                                    <span class="mini-cart-meta">
                                        <a href="shop-product.html?id=<c:out value='${cartitem.productId}' />"><span style='font-family:Arial;'>&#8377;</span><c:out value="${cartitem.sellingPrice}"/></a>
                                        <span class="mini-meta">
                                           <span class="mini-color">Color: <i class="<c:out value="${cartitem.colors}"/>"></i></span>
                                           <span class="mini-qty">Qty: <c:out value="${cartitem.quantity}"/></span>
                                        </span>
                                    </span>
                                </div>
                                <a href="removefromcart?id=<c:out value='${cartitem.productId}'/>">
                                <span class="mini-cart-delete"><img src="images/delete.png" alt="delete"></span>
                                </a>
                            </li>
                            </c:forEach>
                            <c:set var="subtotal" scope="session"/>
                            <li class="mini-subtotal">
                                <span class="subtotal-content">
                                    Subtotal:
                                    <span style='font-family:Arial;'>&#8377;</span><strong class="pull-right"><c:out value="${sessionScope.sbt}"/></strong>
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
                    