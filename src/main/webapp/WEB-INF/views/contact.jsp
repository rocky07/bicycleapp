<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>Contact</title>

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
        <!--Start Blog-->
        <div class="blog">
            <div class="container">
                <ul class="tz-breadcrumbs">
                    <li>
                        <a href="#">Home</a>
                    </li>
                    <li class="current">
                        Contact
                    </li>
                </ul>
                <div class="blog-container">
                    <div class="row">
                    <div class="col-md-4">

                        <!--Blog Sidebar-->
                        <div class="blog-sidebar">
                            <aside class="contact-info widget no-border">
                                <h4 class="widget-title">Contact info</h4>
                                <p>Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis</p>
                                <ul>
                                    <li>
                                        <span>Address</span>
                                        <address>123 Sky Tower address name, Los Algeles, USA, Country, 01234</address>
                                    </li>
                                    <li>
                                        <span>Phone</span> (012) 345 6789
                                    </li>
                                    <li>
                                        <span>Email:</span> info@templaza.com
                                    </li>
                                </ul>
                            </aside>
                        </div>
                        <!--End Blog Sidebar-->
                    </div>
                    <div class="col-md-8 tz-blog-content">
                        <h1 class="large-ttle">Contact Us</h1>
                        <div id="contact-form" class="contact-respond">
                            <h3 class="tz-title">Leave us a message</h3>
                            <form:form method="post" modelAttribute="contactForm" action="sendmail" id="commentform" class="contact-form-7">
                                <p class="comment-for-author">
                                    <form:input type="text" path="name" class="author" placeholder="Name"/>
                                    <form:errors path="name"/>
                                    <i class="fa fa-user"></i>
                                </p>
                                <p class="comment-for-email">
                                    <form:input path="email" type="text" class="email" placeholder="Email"/>
                                    <form:errors path="email"/>
                                    <i class="fa fa-envelope"></i>
                                </p>
                                <p class="comment-for-url">
                                    <form:input path="website" type="url" class="url" placeholder="Website"/>
                                    <i class="fa fa-link"></i>
                                </p>
                                <p class="comment-for-content">
                                    <form:textarea path="comment" class="comment" name="comment"/>
                                    <form:errors path="comment"/>
                                    <i class="fa fa-comment"></i>
                                </p>
                                <p class="comment-for-submit">
                                    <input name="submit" type="submit" id="submit" class="submit" value="Submit form">
                                </p>
                            </form:form>
                        </div>
                        <div class="map">
                            <h3 class="tz-title">Get in touch with us</h3>
                            <div class="map-iframe">
                                <iframe src="https://www.google.com/maps/embed?pb=!1m16!1m12!1m3!1d423284.59051352716!2d-118.41173249999996!3d34.020498899999986!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!2m1!1s123+Sky+Tower+address+name%2C+Los+Algeles%2C+USA%2C+Country%2C!5e0!3m2!1sen!2s!4v1430668657672"></iframe>
                            </div>
                        </div>
                    </div>
                    </div>
                </div>
            </div>
        </div>
        <!--End Start Blog-->

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

    </div>
    <!--End class site-->

<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/off-canvas.js"></script>
<script src="js/owl.carousel.js"></script>
<script src="js/custom.js"></script>

</body>
</html>