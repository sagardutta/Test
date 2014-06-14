<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">

    <title>Shuriken</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta name="description" content="" />
    <!-- css -->
    <link href="http://localhost:8080/shuriken/static/css/bootstrap.css" rel="stylesheet" />
    <link href="css/fancybox/jquery.fancybox.css" rel="stylesheet">
    <link href="css/flexslider.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link rel="stylesheet" href="css/formoid-solid-dark.css" type="text/css" />
    <br/>


    <!-- Theme skin -->
    <link href="skins/default.css" rel="stylesheet" />

    <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
    <!--[if lt IE 9]>
      <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->

</head>
<body>
<div id="wrapper">
    <!-- start header -->
    <header>
        <div class="navbar navbar-default navbar-static-top">
            <div class="container">
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="index.html"><span>S</span>huriken</a>
                </div>
                <div class="navbar-collapse collapse ">
                    <ul class="nav navbar-nav">
                        <li><a href="index.html">Home</a></li>
                        <li><a href="#">About Us</a></li>
                        <li><a href="#">Resources</a></li>
                        <li><a href="#">Eligibility</a></li>
                        <li class="active">
                            <a href="#" class="dropdown-toggle " data-toggle="dropdown" data-hover="dropdown" data-delay="0" data-close-others="false">Feedback <b class=" icon-angle-down"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="feedback1.html">Single Page Template</a></li>
                                <li><a href="feedback2.html">Multi Page Template</a></li>
                                <li><a href="feedback1.html">Settings</a></li>
                                <li><a href="survey.html">Survey Dashboard</a></li>
                            </ul>
                        </li>
                        <li><a href="contact.html">Contact</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </header>

    <section id="inner-headline">
        <div class="container">
            <div class="row">
            </div>
        </div>
    </section>
    <br/>
    <section id="content">
        <div class="container">
            <div class="row">
                <form id="survey" class="formoid-solid-dark" style="background-color:#FFFFFF;font-size:14px;font-family:'Palatino Linotype','Book Antiqua',Palatino,serif;color:#34495E;max-width:680px;min-width:150px" method="post">
                    <div class="title"><h2>Patient Quality of Stay Survey</h2></div>
                    <br/>
                    <div class="element-name"><label class="title"></label><span class="nameFirst"><input placeholder="Name First" type="text" size="8" name="name[first]" /><span class="icon-place"></span></span><span class="nameLast"><input placeholder="Name Last" type="text" size="14" name="name[last]" /><span class="icon-place"></span></span></div>
                    <div class="element-date"><label class="title"></label><div class="item-cont"><input class="large" data-format="yyyy-mm-dd" type="date" name="date" placeholder="Date"/><span class="icon-place"></span></div></div>
                    <br/>

                    <div><h3>ADMISSIONS</h3></div>
                    <div class="element-radio"><label class="title">1. Were you greeted by a nurse when you arrived in your room?</label>		<div class="column column1"><label><input type="radio" name="radio1" value="Immediately" /><span>Immediately</span></label><label><input type="radio" name="radio1" value="Short wait" /><span>Short wait</span></label><label><input type="radio" name="radio1" value="After a while" /><span>After a while</span></label><label><input type="radio" name="radio1" value="Long wait" /><span>Long wait</span></label><label><input type="radio" name="radio1" value="No" /><span>No</span></label></div><span class="clearfix"></span>
                    </div>
                    <div class="element-radio"><label class="title">2. Was the assistance you received  with admission paperwork  adequate?
                    </label>		<div class="column column1"><label><input type="radio" name="radio6" value="Excellent" /><span>Excellent</span></label><label><input type="radio" name="radio6" value="Very good" /><span>Very good</span></label><label><input type="radio" name="radio6" value="Average" /><span>Average</span></label><label><input type="radio" name="radio6" value="Poor" /><span>Poor</span></label><label><input type="radio" name="radio6" value="No assistance received " /><span>No assistance received </span></label></div><span class="clearfix"></span>
                    </div>
                    <div class="element-radio"><label class="title">3. Did the facility present a home-like environment- clean and odor free?
                    </label>		<div class="column column1"><label><input type="radio" name="radio" value="Yes " /><span>Yes </span></label><label><input type="radio" name="radio" value="No" /><span>No</span></label></div><span class="clearfix"></span>
                    </div>
                    <div class="element-radio"><label class="title">4. Did you/were you offered something to, eat or drink when you came in?
                    </label>		<div class="column column1"><label><input type="radio" name="radio3" value="Immediately" /><span>Immediately</span></label><label><input type="radio" name="radio3" value="Short wait" /><span>Short wait</span></label><label><input type="radio" name="radio3" value="After a while" /><span>After a while</span></label><label><input type="radio" name="radio3" value="Long wait" /><span>Long wait</span></label><label><input type="radio" name="radio3" value="No" /><span>No</span></label></div><span class="clearfix"></span>
                    </div>
                    <br/>
                    <div><h3>DIETARY</h3></div>
                    <div class="element-radio"><label class="title">1. Have your meals been served on time? (Breakfast 8-9 am, Lunch 12-1 pm, Dinner 6-7 pm)
                    </label>		<div class="column column1"><label><input type="radio" name="radio4" value="Yes" /><span>Yes</span></label><label><input type="radio" name="radio4" value="No	" /><span>No	</span></label></div><span class="clearfix"></span>
                    </div>
                    <div class="element-radio"><label class="title">2. Are your meals appealing? Warm, Visually, Texture, adequate choices?
                    </label>		<div class="column column1"><label><input type="radio" name="radio5" value="Excellent" /><span>Excellent</span></label><label><input type="radio" name="radio5" value="Very good" /><span>Very good</span></label><label><input type="radio" name="radio5" value="Average" /><span>Average</span></label><label><input type="radio" name="radio5" value="Poor" /><span>Poor</span></label><label><input type="radio" name="radio5" value="No assistance received " /><span>No assistance received </span></label></div><span class="clearfix"></span>
                    </div>
                    <div class="element-radio"><label class="title">3. Are alternate meal selections offered?
                    </label>		<div class="column column1"><label><input type="radio" name="radio7" value="Always" /><span>Always</span></label><label><input type="radio" name="radio7" value="Usually" /><span>Usually</span></label><label><input type="radio" name="radio7" value="Sometimes" /><span>Sometimes</span></label><label><input type="radio" name="radio7" value="Not usually" /><span>Not usually</span></label><label><input type="radio" name="radio7" value="Never" /><span>Never</span></label></div><span class="clearfix"></span>
                    </div>
                    <div class="element-radio"><label class="title">4. Have meals and portions been in keeping with your requests and diet?
                    </label>		<div class="column column1"><label><input type="radio" name="radio8" value="Yes" /><span>Yes</span></label><label><input type="radio" name="radio8" value="No" /><span>No</span></label></div><span class="clearfix"></span>
                    </div>
                    <div class="element-radio"><label class="title">5. How comfortable is the room?
                    </label>		<div class="column column1"><label><input type="radio" name="radio9" value="Excellent" /><span>Excellent</span></label><label><input type="radio" name="radio9" value="Very Good" /><span>Very Good</span></label><label><input type="radio" name="radio9" value="Average" /><span>Average</span></label><label><input type="radio" name="radio9" value="Below Average" /><span>Below Average</span></label><label><input type="radio" name="radio9" value="Poor" /><span>Poor</span></label></div><span class="clearfix"></span>
                    </div>
                    <div class="submit"><input type="submit" value="Submit"/></div></form><p class="frmd">
                <!-- Stop Formoid form-->



            </div>
        </div>
    </section>
    <div id="survey-complete" class="container msg-div" style="display:none">
        <h3>Thank You</h3>
        <h5>Your feedback is important to us</h5>
        <img src="images/survey_icon.jpg" class="img-responsive" alt="Responsive image">
    </div>
    <footer>
        <div class="container">
            <div class="row">
                <div class="col-lg-3">
                    <div class="widget">
                        <h5 class="widgetheading">Get in touch with us</h5>
                        <address>
                            <strong>Your company name</strong><br>
                            Shuriken Building suite V124, AB 01<br>
                            Someplace 1268172 USA </address>
                        <p>
                            <i class="icon-phone"></i> (123) 456-7890 - (123) 555-7891 <br>
                            <i class="icon-envelope-alt"></i> email@domainname.com
                        </p>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="widget">
                        <h5 class="widgetheading">Pages</h5>
                        <ul class="link-list">
                            <li><a href="#">Press release</a></li>
                            <li><a href="#">Terms and conditions</a></li>
                            <li><a href="#">Privacy policy</a></li>
                            <li><a href="#">Career center</a></li>
                            <li><a href="#">Contact us</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-lg-3">
                    <div class="widget">
                        <h5 class="widgetheading">Latest posts</h5>
                        <ul class="link-list">
                            <li><a href="#">Lorem ipsum dolor sit amet, consectetur adipiscing elit.</a></li>
                            <li><a href="#">Pellentesque et pulvinar enim. Quisque at tempor ligula</a></li>
                            <li><a href="#">Natus error sit voluptatem accusantium doloremque</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <div id="sub-footer">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="copyright">
                            <p>
                                <span>&copy; Shuriken 2014 All right reserved. By </span><a href="#" target="_blank">Shuriken</a>
                            </p>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <ul class="social-network">
                            <li><a href="#" data-placement="top" title="Facebook"><i class="fa fa-facebook"></i></a></li>
                            <li><a href="#" data-placement="top" title="Twitter"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="#" data-placement="top" title="Linkedin"><i class="fa fa-linkedin"></i></a></li>
                            <li><a href="#" data-placement="top" title="Pinterest"><i class="fa fa-pinterest"></i></a></li>
                            <li><a href="#" data-placement="top" title="Google plus"><i class="fa fa-google-plus"></i></a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </footer>
</div><a href="#" class="scrollup"><i class="fa fa-angle-up active"></i></a>
<!-- javascript
    ================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="js/jquery.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.fancybox.pack.js"></script>
<script src="js/jquery.fancybox-media.js"></script>
<script src="js/google-code-prettify/prettify.js"></script>
<script src="js/portfolio/jquery.quicksand.js"></script>
<script src="js/portfolio/setting.js"></script>
<script src="js/jquery.flexslider.js"></script>
<script src="js/animate.js"></script>
<script src="js/custom.js"></script>
<script src="js/validate.js"></script>

<script type="text/javascript">
    $( "form" ).submit(function( event ) {
        $("section#content").remove();
        $("div#survey-complete").show();
        return false;
    });
</script>
</body>
</html>