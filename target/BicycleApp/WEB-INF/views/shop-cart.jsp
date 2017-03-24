<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Shop Cart</title>

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
<jsp:include page="header.jsp" />
    <!--End id tz header-->

    <section class="shop-checkout">
        <div class="container">
            <!--Start Breadcrumbs-->
            <ul class="tz-breadcrumbs">
                <li>
                    <a href="#">Home</a>
                </li>
                <li class="current">
                    Shop Cart
                </li>
            </ul>
            <!--End Breadcrumbs-->
            <h1 class="page-title">Shop Cart</h1>

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
                            <th class="product-subtotal">Total</th>
                        </tr>
                    </thead>
                    <!--End table header-->

                    <!--Table body-->
                    <tbody>
  <c:forEach items="${cartform.cartList}" var="cart" varStatus="status">
                        <tr class="cart_item">
                            <td class="product-remove">
                                <a href="removefromcart?id=<c:out value='${cart.productId}'/>" class="remove" title="Remove this item"></a>
                            </td>
                            <td class="product-thumbnail">
                                <a href="single-product.html"><img src="images/product/widget1.jpg" alt="cart" /></a>
                            </td>

                            <td class="product-name">
                                <a href="single-product.html"><c:out value="${cart.title}"/> </a>
                                <span class="color">
                                </span>
                                    Color: <i class="orange"></i>
                            </td>
                            <td class="product-price">
                                <span class="amount"><c:out value="${cart.sellingPrice}"/> </span>
                            </td>

                            <td class="product-quantity">
                                <div class="quantity">
                                <form:input path="cartList[${status.index}].productId" type="hidden"/>
                                <form:input path="cartList[${status.index}].title" type="hidden"/>
                                <form:input path="cartList[${status.index}].colors" type="hidden"/>
                                <form:input path="cartList[${status.index}].sellingPrice" type="hidden"/>
                                <form:input type="number" start="1" step="1" min="1" path="cartList[${status.index}].quantity" />
                              <!--  
                                <input type="text"  name="cart" title="Qty" id="<c:out value='cart.cartList${status.index}.quantity'/>" name="<c:out value='cartList${status.index}.quantity'/>" class="input-text qty text" size="4" value="<c:out value='${cart.quantity}'/>"/>
                                -->
                                </div>
                            </td>

                            <td class="product-subtotal">
                                <span class="amount"><c:out value="${cart.sellingPrice*cart.quantity}" /></span>
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
                         -->
                        <tr>
                            <td class="actions" colspan="6">
                                <a class="back-shop" href="#"><i class="fa fa-angle-left"></i> BACK TO SHOP</a>
                                <button class="update-cart" type="submit">update cart</button>
                            </td>
                        </tr>

                    </tbody>
                    <!--End table body-->
                </table>
            </form:form>
            <!--End form table-->

            <!--Cart attr-->
            <div class="row">
                <div class="col-md-6 col-sm-6">
                    <!--Coupon-->
                    <div class="coupon">
                        <h3>Coupon</h3>
                        <form>
                            <p>Enter your coupon code if you have one.</p>
                            <input type="text" name="coupon_code" class="input-text" id="coupon_code" value="" placeholder="Coupon code">
                            <input type="submit" class="button" name="apply_coupon" value="Apply Coupon">
                        </form>
                    </div>
                    <!--End coupon-->
                </div>
                <div class="col-md-6 col-sm-6">

                    <!--Cart totals-->
                    <div class="cart_totals">
                        <div class="cart_totals_inner">
                            <table>
                                <tbody>
                                    <tr class="cart-subtotal">
                                        <th>Subtotal</th>
                                        <td><span class="amount"><c:out value="${sessionScope.sbt}"/></span></td>
                                    </tr>
                                    <!-- <tr class="shipping">
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
                                    </tr> -->
                                    <tr class="order-total">
                                        <th>Order total</th>
                                        <td><span class="amount"><c:out value="${subtotal}"/></span></td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>

                    </div>
                    <!--End cart totals-->

                </div>
            </div>
            <!--End cart attr-->
        </div>
    </section>

    <!--Start Footer-->
    <jsp:include page="footer.jsp"></jsp:include>
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