<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>

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
<jsp:include page="header.jsp" />
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
                            <c:forEach items="${sessionScope.cartvalues}" var="cartItem">
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
                                <td><span class="amount"><c:out value="${sessionScope.sbt}"/></span></td>
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
    <jsp:include page="footer.jsp"></jsp:include>
    <!--End Footer-->

</div><!--End class site-->

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/off-canvas.js"></script>
<script src="js/custom.js"></script>

</body>
</html>