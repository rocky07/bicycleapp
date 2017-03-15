<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Single Product</title>

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

    <!--Start shop single-->
    <section class="tz-shop-single">
        <div class="container">

            <!--Start Breadcrumbs-->
            <ul class="tz-breadcrumbs">
                <li>
                    <a href="index.html">Home</a>
                </li>
                <li class="current">
                    Category
                </li>
            </ul>
            <!--End Breadcrumbs-->
            <div class="row">
                <div class="col-md-6 col-sm-6">

                    <!--Shop images-->
                    <div class="shop-images">
                        <ul class="single-gallery">
                            <li>
                                <img src="images/product/single-p.jpg" alt="Propel Advanced Pro">
                            </li>
                            <li>
                                <img src="images/product/single-p.jpg" alt="Propel Advanced Pro">
                            </li>
                            <li>
                                <img src="images/product/single-p.jpg" alt="Propel Advanced Pro">
                            </li>
                        </ul>
                        <div class="product-social">
                            <a href="#" class="fa fa-facebook"></a>
                            <a href="#" class="fa fa-twitter"></a>
                            <a href="#" class="fa fa-google-plus"></a>
                            <a href="#" class="fa fa-dribbble"></a>
                        </div>
                    </div>
                    <!--End shop image-->
                </div>
                <div class="col-md-6 col-sm-6">
                    <!--Shop content-->
                    <div class="entry-summary">
                        <h1><c:out value="${product.title}"/></h1>
                        <span class="p-vote">
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star"></i>
                            <i class="fa fa-star-half-o"></i>
                        </span>
                        <p class="product-price">
                            <span class="price"><c:out value="${product.price}"/></span>
                            <span class="stock">Availability:  <span>
                            <c:choose>
                             <c:when test="${product.stock gt 0} }">
                             In stock
                             </c:when>
                             <c:otherwise>
						        Out of Stock
						    </c:otherwise>
						    </c:choose>
                            </span></span>
                        </p>
                        <div class="description">
                            <p>
                            <c:out value="${product.description}"/>
                            </p>
                        </div>
                        <form class="tz_variations_form ">
                            <p class="form-attr">
                            <!-- -
                                <span class="color">
                                    <label>Color:</label>
                                    <select name="color">
                                        <option value="blue">Blue</option>
                                        <option value="blue">Red</option>
                                        <option value="blue">Yellow</option>
                                    </select>
                                </span> -->
                                <span class="tzqty">
                                    <label>Qty:</label>
                                    <input type="number" step="1" min="1" name="quantity" value="1" title="Qty" class="input-text qty text" size="4">
                                </span>
                            </p>
                            <p>
                                <button type="submit" class="single_add_to_cart_button">Add to cart</button>
                                <a href="addtowishlist?id=<c:out value='${product.id}'/>" class="single_add_to_wishlist" >add to wishlist</a>
                            </p>
                        </form>
                    </div>
                    <!--End shop content-->
                </div>

            </div>
        </div>

        <!--Shop tabs-->
        <div class="tz-shop-tabs">
            <div class="container">
                <div class="tab-head">
                    <ul class="nav nav-tabs">
                        <li role="presentation" class="active"><a href="#description" data-toggle="tab">Description</a></li>
                        <li role="presentation"><a href="#reviews" data-toggle="tab">Reviews</a></li>
                        <li role="presentation"><a href="#information" data-toggle="tab">Information</a></li>
                    </ul>
                </div>
                <div class="tab-content">
                    <div class="tab-pane active" id="description">
                        <p><c:out value="${product.description}"/></p>
                    </div>
                    <div class="tab-pane" id="reviews">
                        <p><c:out value="${product.reviews}"/> </p>
                    </div>
                    <div class="tab-pane" id="information">
                        <p><c:out value="${product.information}"/></p>
                    </div>
                </div>
            </div>
        </div>
        <!--End tab-->

        <!--Tabs product-->
        <div class="container">
            <div class="box-shadow">

                <!--Tabs header-->
                <div class="tz-tabs-header">
                    <h2 class="tz-tabs-title pull-left">Widget Products</h2>
                    <ul class="nav nav-tabs pull-right tz-nav-tabs">
                        <li role="presentation" class="active"><a href="#one_read" data-toggle="tab">On-Road <i class="fa fa-circle"></i></a></li>
                        <li role="presentation"><a href="#x_road" data-toggle="tab">X-Road <i class="fa fa-circle"></i></a></li>
                        <li role="presentation"><a href="#off_road" data-toggle="tab">Off-Road <i class="fa fa-circle"></i></a></li>
                        <li role="presentation"><a href="#bmx" data-toggle="tab">BMX</a></li>
                    </ul>
                </div>
                <!--End tab header-->

                <!--Tab content-->
                <div class="tab-content">

                    <!--Tab item-->
                    <div class="tab-pane active" id="one_read">
                        <div class="row row-item">
                            <div class="col-md-3 col-sm-6">

                                <!--Start product item-->
                                <div class="product-item">
                                    <div class="product-thubnail">
                                        <img src="images/product/product4.png" alt="product 4" />
                                        <div class="product-meta">
                                            <a class="add-to-cart" href="shop-cart.html">Add to cart</a>
                                            <span class="quick-view">
                                                <a href="#">Quick view</a>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="product-infomation">
                                        <h4><a href="single-product.html">Propel Advanced SL 0</a></h4>
                                        <span class="product-price">$900.00</span>
                                        <span class="product-attr">
                                            <i class="fa fa-circle light-blue"></i>
                                            <i class="fa fa-circle orange"></i>
                                            <i class="fa fa-circle blueviolet"></i>
                                            <i class="fa fa-circle orange-dark"></i>
                                            <i class="fa fa-circle steelblue"></i>
                                        </span>
                                    </div>
                                </div>
                                <!--End product item-->
                            </div>
                            <div class="col-md-3 col-sm-6">

                                <!--Start product item-->
                                <div class="product-item">
                                    <div class="product-thubnail">
                                        <img src="images/product/product5.jpg" alt="product 2" />
                                        <div class="product-meta">
                                            <a class="add-to-cart" href="shop-cart.html">Add to cart</a>
                                            <span class="quick-view">
                                                <a href="#">Quick view</a>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="product-infomation">
                                        <h4><a href="single-product.html">Defy Advanced SL</a></h4>
                                        <span class="product-price">$1,770.00</span>
                                        <span class="product-attr">
                                            <i class="fa fa-circle light-blue"></i>
                                            <i class="fa fa-circle orange"></i>
                                            <i class="fa fa-circle blueviolet"></i>
                                            <i class="fa fa-circle orange-dark"></i>
                                            <i class="fa fa-circle steelblue"></i>
                                        </span>
                                    </div>
                                </div>
                                <!--End product item-->

                            </div>
                            <div class="col-md-3 col-sm-6">

                                <!--Start product item-->
                                <div class="product-item">
                                    <div class="product-thubnail">
                                        <img src="images/product/product6.jpg" alt="product 3" />
                                        <div class="product-meta">
                                            <a class="add-to-cart" href="shop-cart.html">Add to cart</a>
                                            <span class="quick-view">
                                                <a href="#">Quick view</a>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="product-infomation">
                                        <h4><a href="single-product.html">FastRoad CoMax</a></h4>
                                        <span class="product-price">$900.00</span>
                                        <span class="product-attr">
                                            <i class="fa fa-circle light-blue"></i>
                                            <i class="fa fa-circle orange"></i>
                                            <i class="fa fa-circle blueviolet"></i>
                                            <i class="fa fa-circle orange-dark"></i>
                                            <i class="fa fa-circle steelblue"></i>
                                        </span>
                                    </div>
                                </div>
                                <!--End product item-->

                            </div>
                            <div class="col-md-3 col-sm-6">

                                <!--Start product item-->
                                <div class="product-item">
                                    <div class="product-thubnail">
                                        <img src="images/product/product7.jpg" alt="product 4" />
                                        <div class="product-meta">
                                            <a class="add-to-cart" href="shop-cart.html">Add to cart</a>
                                            <span class="quick-view">
                                                <a href="#">Quick view</a>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="product-infomation">
                                        <h4><a href="single-product.html">Propel Advanced SL 0</a></h4>
                                        <span class="product-price">$900.00</span>
                                        <span class="product-attr">
                                            <i class="fa fa-circle light-blue"></i>
                                            <i class="fa fa-circle orange"></i>
                                            <i class="fa fa-circle blueviolet"></i>
                                            <i class="fa fa-circle orange-dark"></i>
                                            <i class="fa fa-circle steelblue"></i>
                                        </span>
                                    </div>
                                </div>
                                <!--End product item-->

                            </div>
                        </div>
                    </div>
                    <!--End tab item-->

                    <!--Tab item-->
                    <div class="tab-pane" id="x_road">
                        <div class="row row-item">
                            <div class="col-md-3 col-sm-6">

                                <!--Start product item-->
                                <div class="product-item">
                                    <div class="product-thubnail">
                                        <img src="images/product/product5.jpg" alt="product 2" />
                                        <div class="product-meta">
                                            <a class="add-to-cart" href="shop-cart.html">Add to cart</a>
                                            <span class="quick-view">
                                                <a href="#">Quick view</a>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="product-infomation">
                                        <h4><a href="single-product.html">Defy Advanced SL</a></h4>
                                        <span class="product-price">$1,770.00</span>
                                        <span class="product-attr">
                                            <i class="fa fa-circle light-blue"></i>
                                            <i class="fa fa-circle orange"></i>
                                            <i class="fa fa-circle blueviolet"></i>
                                            <i class="fa fa-circle orange-dark"></i>
                                            <i class="fa fa-circle steelblue"></i>
                                        </span>
                                    </div>
                                </div>
                                <!--End product item-->

                            </div>
                            <div class="col-md-3 col-sm-6">

                                <!--Start product item-->
                                <div class="product-item">
                                    <div class="product-thubnail">
                                        <img src="images/product/product4.png" alt="product 4" />
                                        <div class="product-meta">
                                            <a class="add-to-cart" href="shop-cart.html">Add to cart</a>
                                            <span class="quick-view">
                                                <a href="#">Quick view</a>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="product-infomation">
                                        <h4><a href="single-product.html">Propel Advanced SL 0</a></h4>
                                        <span class="product-price">$900.00</span>
                                        <span class="product-attr">
                                            <i class="fa fa-circle light-blue"></i>
                                            <i class="fa fa-circle orange"></i>
                                            <i class="fa fa-circle blueviolet"></i>
                                            <i class="fa fa-circle orange-dark"></i>
                                            <i class="fa fa-circle steelblue"></i>
                                        </span>
                                    </div>
                                </div>
                                <!--End product item-->

                            </div>
                            <div class="col-md-3 col-sm-6">

                                <!--Start product item-->
                                <div class="product-item">
                                    <div class="product-thubnail">
                                        <img src="images/product/product6.jpg" alt="product 3" />
                                        <div class="product-meta">
                                            <a class="add-to-cart" href="shop-cart.html">Add to cart</a>
                                            <span class="quick-view">
                                                <a href="#">Quick view</a>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="product-infomation">
                                        <h4><a href="single-product.html">FastRoad CoMax</a></h4>
                                        <span class="product-price">$900.00</span>
                                        <span class="product-attr">
                                            <i class="fa fa-circle light-blue"></i>
                                            <i class="fa fa-circle orange"></i>
                                            <i class="fa fa-circle blueviolet"></i>
                                            <i class="fa fa-circle orange-dark"></i>
                                            <i class="fa fa-circle steelblue"></i>
                                        </span>
                                    </div>
                                </div>
                                <!--End product item-->

                            </div>
                            <div class="col-md-3 col-sm-6">

                                <!--Start product item-->
                                <div class="product-item">
                                    <div class="product-thubnail">
                                        <img src="images/product/product7.jpg" alt="product 4" />
                                        <div class="product-meta">
                                            <a class="add-to-cart" href="shop-cart.html">Add to cart</a>
                                            <span class="quick-view">
                                                <a href="#">Quick view</a>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="product-infomation">
                                        <h4><a href="single-product.html">Propel Advanced SL 0</a></h4>
                                        <span class="product-price">$900.00</span>
                                        <span class="product-attr">
                                            <i class="fa fa-circle light-blue"></i>
                                            <i class="fa fa-circle orange"></i>
                                            <i class="fa fa-circle blueviolet"></i>
                                            <i class="fa fa-circle orange-dark"></i>
                                            <i class="fa fa-circle steelblue"></i>
                                        </span>
                                    </div>
                                </div>
                                <!--End product item-->

                            </div>
                        </div>
                    </div>
                    <!--End tab item-->

                    <!--Tab item-->
                    <div class="tab-pane" id="off_road">
                        <div class="row row-item">
                            <div class="col-md-3 col-sm-6">

                                <!--Start product item-->
                                <div class="product-item">
                                    <div class="product-thubnail">
                                        <img src="images/product/product7.jpg" alt="product 4" />
                                        <div class="product-meta">
                                            <a class="add-to-cart" href="shop-cart.html">Add to cart</a>
                                            <span class="quick-view">
                                                <a href="#">Quick view</a>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="product-infomation">
                                        <h4><a href="single-product.html">Propel Advanced SL 0</a></h4>
                                        <span class="product-price">$900.00</span>
                                        <span class="product-attr">
                                            <i class="fa fa-circle light-blue"></i>
                                            <i class="fa fa-circle orange"></i>
                                            <i class="fa fa-circle blueviolet"></i>
                                            <i class="fa fa-circle orange-dark"></i>
                                            <i class="fa fa-circle steelblue"></i>
                                        </span>
                                    </div>
                                </div>
                                <!--End product item-->

                            </div>
                            <div class="col-md-3 col-sm-6">

                                <!--Start product item-->
                                <div class="product-item">
                                    <div class="product-thubnail">
                                        <img src="images/product/product4.png" alt="product 4" />
                                        <div class="product-meta">
                                            <a class="add-to-cart" href="shop-cart.html">Add to cart</a>
                                            <span class="quick-view">
                                                <a href="#">Quick view</a>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="product-infomation">
                                        <h4><a href="single-product.html">Propel Advanced SL 0</a></h4>
                                        <span class="product-price">$900.00</span>
                                        <span class="product-attr">
                                            <i class="fa fa-circle light-blue"></i>
                                            <i class="fa fa-circle orange"></i>
                                            <i class="fa fa-circle blueviolet"></i>
                                            <i class="fa fa-circle orange-dark"></i>
                                            <i class="fa fa-circle steelblue"></i>
                                        </span>
                                    </div>
                                </div>
                                <!--End product item-->

                            </div>
                            <div class="col-md-3 col-sm-6">

                                <!--Start product item-->
                                <div class="product-item">
                                    <div class="product-thubnail">
                                        <img src="images/product/product5.jpg" alt="product 2" />
                                        <div class="product-meta">
                                            <a class="add-to-cart" href="shop-cart.html">Add to cart</a>
                                            <span class="quick-view">
                                                <a href="#">Quick view</a>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="product-infomation">
                                        <h4><a href="single-product.html">Defy Advanced SL</a></h4>
                                        <span class="product-price">$1,770.00</span>
                                        <span class="product-attr">
                                            <i class="fa fa-circle light-blue"></i>
                                            <i class="fa fa-circle orange"></i>
                                            <i class="fa fa-circle blueviolet"></i>
                                            <i class="fa fa-circle orange-dark"></i>
                                            <i class="fa fa-circle steelblue"></i>
                                        </span>
                                    </div>
                                </div>
                                <!--End product item-->

                            </div>
                            <div class="col-md-3 col-sm-6">

                                <!--Start product item-->
                                <div class="product-item">
                                    <div class="product-thubnail">
                                        <img src="images/product/product6.jpg" alt="product 3" />
                                        <div class="product-meta">
                                            <a class="add-to-cart" href="shop-cart.html">Add to cart</a>
                                            <span class="quick-view">
                                                <a href="#">Quick view</a>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="product-infomation">
                                        <h4><a href="single-product.html">FastRoad CoMax</a></h4>
                                        <span class="product-price">$900.00</span>
                                        <span class="product-attr">
                                            <i class="fa fa-circle light-blue"></i>
                                            <i class="fa fa-circle orange"></i>
                                            <i class="fa fa-circle blueviolet"></i>
                                            <i class="fa fa-circle orange-dark"></i>
                                            <i class="fa fa-circle steelblue"></i>
                                        </span>
                                    </div>
                                </div>
                                <!--End product item-->

                            </div>
                        </div>
                    </div>
                    <!--End tab item-->

                    <!--Tab item-->
                    <div class="tab-pane" id="bmx">
                        <div class="row row-item">
                            <div class="col-md-3 col-sm-6">

                                <!--Start product item-->
                                <div class="product-item">
                                    <div class="product-thubnail">
                                        <img src="images/product/product6.jpg" alt="product 3" />
                                        <div class="product-meta">
                                            <a class="add-to-cart" href="shop-cart.html">Add to cart</a>
                                            <span class="quick-view">
                                                <a href="#">Quick view</a>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="product-infomation">
                                        <h4><a href="single-product.html">FastRoad CoMax</a></h4>
                                        <span class="product-price">$900.00</span>
                                        <span class="product-attr">
                                            <i class="fa fa-circle light-blue"></i>
                                            <i class="fa fa-circle orange"></i>
                                            <i class="fa fa-circle blueviolet"></i>
                                            <i class="fa fa-circle orange-dark"></i>
                                            <i class="fa fa-circle steelblue"></i>
                                        </span>
                                    </div>
                                </div>
                                <!--End product item-->

                            </div>
                            <div class="col-md-3 col-sm-6">

                                <!--Start product item-->
                                <div class="product-item">
                                    <div class="product-thubnail">
                                        <img src="images/product/product4.png" alt="product 4" />
                                        <div class="product-meta">
                                            <a class="add-to-cart" href="shop-cart.html">Add to cart</a>
                                            <span class="quick-view">
                                                <a href="#">Quick view</a>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="product-infomation">
                                        <h4><a href="single-product.html">Propel Advanced SL 0</a></h4>
                                        <span class="product-price">$900.00</span>
                                        <span class="product-attr">
                                            <i class="fa fa-circle light-blue"></i>
                                            <i class="fa fa-circle orange"></i>
                                            <i class="fa fa-circle blueviolet"></i>
                                            <i class="fa fa-circle orange-dark"></i>
                                            <i class="fa fa-circle steelblue"></i>
                                        </span>
                                    </div>
                                </div>
                                <!--End product item-->

                            </div>
                            <div class="col-md-3 col-sm-6">

                                <!--Start product item-->
                                <div class="product-item">
                                    <div class="product-thubnail">
                                        <img src="images/product/product5.jpg" alt="product 2" />
                                        <div class="product-meta">
                                            <a class="add-to-cart" href="shop-cart.html">Add to cart</a>
                                            <span class="quick-view">
                                                <a href="#">Quick view</a>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="product-infomation">
                                        <h4><a href="single-product.html">Defy Advanced SL</a></h4>
                                        <span class="product-price">$1,770.00</span>
                                        <span class="product-attr">
                                            <i class="fa fa-circle light-blue"></i>
                                            <i class="fa fa-circle orange"></i>
                                            <i class="fa fa-circle blueviolet"></i>
                                            <i class="fa fa-circle orange-dark"></i>
                                            <i class="fa fa-circle steelblue"></i>
                                        </span>
                                    </div>
                                </div>
                                <!--End product item-->

                            </div>
                            <div class="col-md-3 col-sm-6">

                                <!--Start product item-->
                                <div class="product-item">
                                    <div class="product-thubnail">
                                        <img src="images/product/product7.jpg" alt="product 4" />
                                        <div class="product-meta">
                                            <a class="add-to-cart" href="shop-cart.html">Add to cart</a>
                                            <span class="quick-view">
                                                <a href="#">Quick view</a>
                                            </span>
                                        </div>
                                    </div>
                                    <div class="product-infomation">
                                        <h4><a href="single-product.html">Propel Advanced SL 0</a></h4>
                                        <span class="product-price">$900.00</span>
                                        <span class="product-attr">
                                            <i class="fa fa-circle light-blue"></i>
                                            <i class="fa fa-circle orange"></i>
                                            <i class="fa fa-circle blueviolet"></i>
                                            <i class="fa fa-circle orange-dark"></i>
                                            <i class="fa fa-circle steelblue"></i>
                                        </span>
                                    </div>
                                </div>
                                <!--End product item-->

                            </div>
                        </div>
                    </div>
                    <!--End tab item-->

                </div>
                <!--End tab content-->

            </div>
        </div>
        <!--End tabs-->

        <!--Start partners-->
        <div class="container">
            <ul class="tz-partners">
                <li>
                    <a href="#">
                        <img src="images/clients/partner1.jpg" alt="partner">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="images/clients/partner2.jpg" alt="partner">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="images/clients/partner3.jpg" alt="partner">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="images/clients/partner4.jpg" alt="partner">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="images/clients/partner5.jpg" alt="partner">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="images/clients/partner6.jpg" alt="partner">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="images/clients/partner1.jpg" alt="partner">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="images/clients/partner2.jpg" alt="partner">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="images/clients/partner5.jpg" alt="partner">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="images/clients/partner3.jpg" alt="partner">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="images/clients/partner4.jpg" alt="partner">
                    </a>
                </li>
                <li>
                    <a href="#">
                        <img src="images/clients/partner6.jpg" alt="partner">
                    </a>
                </li>
            </ul>
        </div>
        <!--End partners-->
    </section>
    <!--End Shop single-->

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
<script type='text/javascript' src="js/off-canvas.js"></script>
<!--jQuery Countdow-->
<script src="js/jquery.plugin.min.js"></script>
<script src="js/jquery.countdown.min.js"></script>
<!--End Countdow-->

<script src="js/owl.carousel.js"></script>
<script src="js/custom.js"></script>

</body>
</html>
