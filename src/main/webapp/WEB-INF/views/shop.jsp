<%@ taglib prefix="c" uri="http://java.sun.com/jstl/core_rt" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Shop</title>

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
<jsp:include page="header.jsp" />

  
    <!--Start shop-->
    <div class="tz-shop">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                    <!--Start for shop sidebar-->
                    <div class="tz-shop-sidebar">
                        <aside class="widget widget_product_categories">
                            <h3 class="widget-title">Bikes product</h3>
                            <ul class="product-categories">
                            <c:forEach items="${productcategory}" var="current">
        					<li class="cat-parent">
        					<c:choose>
        					<c:when test="${current.hasChild}">
        					<a href="#"><c:out value="${current.category}" /></a>
        					</c:when>
        					<c:otherwise>
        					<a href="shop.html?catid=<c:out value='${current.id}'/>"><c:out value="${current.category}" /><!--  <span>(3)</span> --></a>
        					</c:otherwise>
        					</c:choose>
         					
	         					<c:if test="${current.hasChild}">
		         					<ul class="children">
		         							<c:forEach items="${current.children}" var="children">
		                                        <li>
		                                            <a href="shop.html?catid=<c:out value='${children.id}'/>"><c:out value="${children.category}" /> <!-- <span>(3)</span> --></a>
		                                        </li>
		                                     </c:forEach>
		         					</ul>
	         					</c:if>
         					</li>
         					</c:forEach>
         					</ul>
                        </aside>
                        <aside class="product-catlog widget">
                            <h3 class="widget-title">Catalog</h3>
                            <div class="widget_price_filter">
                                <h4 class="widget-title-children">
                                    Price Filter
                                </h4>
                                <form>
                                    <div id="slider-range"></div>
                                    <div class="price_label">
                                        <button type="submit" class="button">Filter</button>
                                        <span class="value-price">
                                            <span class="from"></span>
                                             -
                                            <span class="to"></span>
                                        </span>
                                    </div>
                                </form>
                            </div>
                            <div class="widget_color_filter">
                                <h4 class="widget-title-children">
                                    Color filter
                                </h4>
                                <ul>
                                    <li>
                                        <a href="shop.html" class="light-blue"></a>
                                    </li>
                                    <li>
                                        <a href="shop.html" class="orange"></a>
                                    </li>
                                    <li>
                                        <a href="shop.html" class="blueviolet"></a>
                                    </li>
                                    <li>
                                        <a href="shop.html" class="orange-dark"></a>
                                    </li>
                                    <li>
                                        <a href="shop.html" class="steelblue"></a>
                                    </li>
                                    <li>
                                        <a href="shop.html" class="red-light"></a>
                                    </li>
                                    <li>
                                        <a href="shop.html" class="cyan-dark"></a>
                                    </li>
                                </ul>
                            </div>
                            <div class="widget-size-filter">
                                <h4 class="widget-title-children">
                                    Size Filter
                                </h4>
                                <ul>
                                <c:forEach items="${productsizes}" var="sizes">
                                <li>
                                        <a href="shop.html"><c:out value="${sizes.size}" /><!-- <span>(24)</span> --></a>
                                    </li>
                                </c:forEach>
                                </ul>
                            </div>
                            <div class="widget-size-filter">
                                <h4 class="widget-title-children">
                                    Brand Filter
                                </h4>
                                <ul>
                                <c:forEach items="${productbrands}" var="brands">
                                <li>
                                        <a href="shop.html"><c:out value="${brands.brand}" /><!-- <span>(24)</span> --></a>
                                    </li>
                                </c:forEach>
                                </ul>
                            </div>
                        </aside>
                        <aside class="widget widget_product">
                            <h3 class="widget-title">Featured product</h3>
                            <ul>
                              <c:forEach items="${featuredproducts}" var="product">
                                <li>
                                    <a href="shop-product?id=<c:out value='${product.id}'/>">
                                    
                                     <c:choose>
			                                <c:when test="${not empty product.productImages}">
			                                <img src='uploads/product/<c:out value="${product.productImages[0].image}"/>' alt="product search one">
			                                </c:when>
			                                <c:otherwise>
			                                	<img src="images/product/widget1.jpg" alt="Defy Advanced">
			                                </c:otherwise>
			                                </c:choose>
			                                
                                        
                                        <div class="item-info">
                                            <h5><c:out value="${product.title}" /></h5>
                                             <span class="p-vote">
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star"></i>
                                                <i class="fa fa-star-half-o"></i>
                                            </span>
                                            <span style='font-family:Arial;'>&#8377;</span><span class="price"><c:out value="${product.price}" /></span>
                                        </div>
                                    </a>
                                </li>
                                </c:forEach>
                            </ul>
                        </aside>
                    </div>
                    <!--End shop sidebar-->

                </div>

                <div class="col-md-9">

                    <!--Start shop content-->
                    <div class="tz-shop-content">
                        <ul class="tz-breadcrumbs">
                            <li>
                                <a href="#">Home</a>
                            </li>
                            <li class="current">
                                Category
                            </li>
                        </ul>
                        <div class="shop-banner">
                            <img src="images/product/banner.jpg" alt="banner">
                        </div>
                        <div class="catalog-meta">
                            <div class="catalog_top">
                                <span class="style-switch">
                                    <a class="nav-grid-view fa fa-th-large active"></a>
                                    <a class="nav-list-view fa fa-list"></a>
                                </span>
                                <form class="shop-order">
                                    <label class="form-arrow">
                                        <select class="number-item" name="number_item">
                                            <option value="12">12 items/page</option>
                                            <option value="6">6 items/page</option>
                                            <option value="3">3 items/page</option>
                                        </select>
                                    </label>
                                    <label class="form-arrow">
                                        <select name="orderby" class="orderby">
                                            <option value="'">Sort By: Position</option>
                                            <option value="rating">Sort by rating</option>
                                            <option value="date">Sort by newness</option>
                                        </select>
                                    </label>
                                </form>
                            </div>
                        </div>

                        <div class="tz-product row grid-eff">
<c:forEach items="${product}" var="product">

                            <!--Product item-->
                            <div class="product-item col-md-4 col-sm-6">
                                <div class="item">
                                    <div class="product-item-inner">
                                        <div class="product-thumb">
                                        
                                        <c:choose>
			                                <c:when test="${not empty product.productImages}">
			                                <img src='uploads/product/<c:out value="${product.productImages[0].image}"/>' alt="product search one">
			                                </c:when>
			                                <c:otherwise>
			                                	<img src="images/product/shop1.jpg" alt="product search one">
			                                </c:otherwise>
			                                </c:choose>
                                        </div>
                                        <div class="product-info">
                                            <h4> <a href="shop-product?id=<c:out value='${product.id}'/>"><c:out value="${product.title}" /></a></h4>
                                            <span class="p-meta">
                                              <span style='font-family:Arial;'>&#8377;</span><span class="p-price"><c:out value="${product.price}" /></span>
                                                <span class="p-vote">
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star"></i>
                                                    <i class="fa fa-star-half-o"></i>
                                                </span>
                                            </span>
                                            <span class="p-color">
                                                 <i class="fa fa-circle light-blue"></i>
                                                <i class="fa fa-circle orange"></i>
                                                <i class="fa fa-circle blueviolet"></i>
                                                <i class="fa fa-circle orange-dark"></i>
                                                <i class="fa fa-circle steelblue"></i>
                                            </span>
                                                <p>
                                                <c:out value="${product.description}" />
                                                </p>
                                            <span class="p-mask">
                                                <a href="addtocart?id=<c:out value='${product.id}'/>&title=<c:out value='${product.title}'/>&price=<c:out value='${product.price}'/>" class="add-to-cart">Add to cart</a>
                                                <a href="#" class="add-to-wishlist"><i class="fa fa-heart"></i> Add to wishlist</a>
                                               <span class="quick-view">
                                                     <a href="shop-product?id=<c:out value='${product.id}'/>"><i class="fa fa-eye"></i> Quick view</a>
                                                </span>
                                            </span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <!--End product item-->
</c:forEach>

                      
                        </div>

                        <nav class="pagination">
                            <ul class="pagination_list pull-right">
                                <li>
                                    <a href="shop.html?start=1&limit=12">1</a>
                                </li>
                                <li>
	                                <a href="shop.html?start=13&limit=12">2</a>
                                </li>
                                <li>
                                    <a href="shop.html?start=25&limit=12">3</a>
                                </li>
                                <li>
                                    <a href="shop.html?start=37&limit=12">4</a>
                                </li>
                                <li>
                                    <a href="shop.html?start=49&limit=12">5</a>
                                </li>
                                <li>
                                    <span>...</span>
                                </li>
                                <li>
                                    <a href="shop.html?start=62&limit=12">Next</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                    <!--End shop content-->
                </div>
            </div>
        </div>
    </div>
    <!--End Shop-->

    <!--Start Footer-->
<jsp:include page="footer.jsp"></jsp:include>
    <!--End Footer-->

    </div><!--End class site-->

<script src="js/jquery.min.js"></script>
<script src="js/jquery-ui.js"></script>
<script src="js/bootstrap.min.js"></script>
<script type='text/javascript' src="js/off-canvas.js"></script>
<!--jQuery Countdow-->
<script src="js/jquery.plugin.min.js"></script>
<script src="js/jquery.countdown.min.js"></script>
<!--End Countdow-->

<script src="js/owl.carousel.js"></script>
<script src="js/custom.js"></script>
<script>
    jQuery(function() {
        jQuery( "#slider-range" ).slider({
            range: true,
            min: 0,
            max: 500,
            values: [ 75, 300 ],
            slide: function( event, ui ) {
                jQuery('.from').text('$' + ui.values[ 0 ]);
                jQuery('.to').text('$' + ui.values[ 1 ]);
            }
        });
        jQuery('.from').text('$' + jQuery( "#slider-range" ).slider( "values", 0 ));
        jQuery('.to').text('$' + jQuery( "#slider-range" ).slider( "values", 1 ));
    }
    );
</script>
</body>
</html>
