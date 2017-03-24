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
               <jsp:include page="header.jsp" />

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
                        <c:if test="${empty product.productImages}">
                        	<li>
                        	<img src="images/product/single-p.jpg" alt="Propel Advanced Pro">
                        	</li>
						</c:if>
			                                
                        <c:forEach items="${product.productImages}" var="images">
                        	<li>
                                <img src='uploads/product/<c:out value="${images.image}"/>' alt="product search one">
                            </li>
                        </c:forEach> 
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
                            <span style='font-family:Arial;'>&#8377;</span><span class="price"><c:out value="${product.price}"/></span>
                            <span class="stock">Availability:  <span>
                            <c:choose>
                             <c:when test="${product.stock gt 0}">
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
                        <form  action="addtocart" class="tz_variations_form ">
                        <input type="hidden" name="id" value="<c:out value='${product.id}'/>"/>
                        <input type="hidden" name="title" value="<c:out value='${product.title}'/>"/>
                        <input type="hidden" name="price" value="<c:out value='${product.price}'/>"/>  
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
                                    <input type="number" step="1" min="1" name="qty" value="1" title="Qty" class="input-text qty text" size="4">
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
                    <c:forEach items="${category}" var="product" varStatus="loop">
                        <c:choose>
                        <c:when test="${loop.index == 0}">
                         <li role="presentation" class="active"><a href="#<c:out value='${product.category}'/>" data-toggle="tab"><c:out value="${product.category}"/><i class="fa fa-circle"></i></a></li>
                        </c:when>
                        <c:otherwise>
                        <li role="presentation"><a href="#<c:out value='${product.category}'/>" data-toggle="tab"><c:out value='${product.category}'/> <i class="fa fa-circle"></i></a></li>
                        </c:otherwise>
                        </c:choose>
                        </c:forEach>
                        
                    <!--  
                        <li role="presentation" class="active"><a href="#one_read" data-toggle="tab">On-Road <i class="fa fa-circle"></i></a></li>
                        <li role="presentation"><a href="#x_road" data-toggle="tab">X-Road <i class="fa fa-circle"></i></a></li>
                        <li role="presentation"><a href="#off_road" data-toggle="tab">Off-Road <i class="fa fa-circle"></i></a></li>
                        <li role="presentation"><a href="#bmx" data-toggle="tab">BMX</a></li>
                        -->
                    </ul>
                </div>
                <!--End tab header-->

                <!--Tab content-->
                <div class="tab-content">
                
                <c:forEach items="${category}" var="category" varStatus="theCount">
						<c:set value="${theCount.index eq 0 ?'tab-pane active':'tab-pane'}" var="cssclass" />
                        <!--Tab item-->
                        <div class="<c:out value='${cssclass}'/>" id="<c:out value='${category.category}'/>">
                            <div class="row">
<c:forEach items="${category.productList}" var="product">
	
                               
                                <div class="col-md-4 col-sm-6">

                                    <!--Start product item-->
                                    <div class="product-item">
                                        <div class="product-thubnail">
                                        <c:choose>
			                                <c:when test="${not empty product.productImages}">
			                                <img src='uploads/product/<c:out value="${product.productImages[0].image}"/>' alt="product search one">
			                                </c:when>
			                                <c:otherwise>
			                                	<img src="images/product/product3.jpg" alt="product search one">
			                                </c:otherwise>
			                                </c:choose>
                                            <div class="product-meta">
		                                        <a href="addtocart?id=<c:out value='${product.id}'/>&title=<c:out value='${product.title}'/>&price=<c:out value='${product.price}'/>" class="add-to-cart">Add to cart</a>
                                                <span class="quick-view">                                                    
                                                    <a href="shop-product?id=<c:out value='${product.id}'/>"><i class="fa fa-eye"></i> Quick view</a>
                                                </span>
                                            </div>
                                        </div>
                                        <div class="product-infomation">
                                            <h4><a href="single-product.html"><c:out value="${product.title}"/></a></h4>
                                            <span style='font-family:Arial;'>&#8377;</span><span class="product-price"><c:out value="${product.price}"/></span>
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
</c:forEach>
                            </div>
                        </div>
                        <!--End tab item-->

</c:forEach>
                
				</div>
        <!--End tabs-->

        <!--Start partners-->
        <!-- 
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
                        <img src="images/clients/partner4.jpg" alt="partner">s
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
         -->
        <!--End partners-->
    </section>
    <!--End Shop single-->

    <!--Start Footer-->
           <jsp:include page="footer.jsp" />
    
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
