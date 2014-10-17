<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<!DOCTYPE html>
<!--[if lt IE 7]><html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]><html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]><html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js"> <!--<![endif]-->
<head prefix="og: http://ogp.me/ns#">

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Marketing Town - Advanced and affordable marketing</title>
    <meta name="description" content="Ever wanted advanced marketing management and analysis at your fingertips, but were worried about the cost? We're here to help! Sign-up to for free and we'll even give you free credit for your first campaign!">

    <meta property="og:image" content="http://storage.googleapis.com/staticcontent/img/MT-Square.png"/>
    <meta property="og:title" content="Marketing Town - Advanced and affordable marketing"/>
    <meta property="og:description" content="Ever wanted advanced marketing management and analysis at your fingertips, but were worried about the cost? We're here to help! Sign-up to for free and we'll even give you free credit for your first campaign!"/>
    <meta property="og:type" content="website"/>
    <meta property="og:url" content="http://www.marketing-town.com">
    <meta property="og:site_name" content="Marketing Town">
    <meta name="viewport" content="width=device-width">

    <link rel="icon" type="image/png" href="//storage.googleapis.com/staticcontent/img/favicon.png">
    <link rel="publisher" href="https://google.com/+Marketing-town"/>
    <link rel="canonical" href="https://www.marketing-town.com">
    <link rel="stylesheet" href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css">
    <link rel="stylesheet" href="css/homepageStyle.css">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/main.css">
    <link rel='stylesheet' href='//fonts.googleapis.com/css?family=Lato' type='text/css'>
    <link rel="stylesheet" href="/css/pnotify.custom.min.css">

    <script src="//storage.googleapis.com/staticcontent/js/modernizr-2.6.2-respond-1.1.0.min.js"></script>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
    <script src="//storage.googleapis.com/staticcontent/js/bootstrap.min.js"></script>
    <script src="//storage.googleapis.com/staticcontent/js/jquery-sortable.js"></script>
    <script src="//storage.googleapis.com/staticcontent/js/tablesorter/jquery.tablesorter.js"></script>
    <script src="/js/main.js"></script>
    <script src="/js/homepageAssets.js"></script>
    <script src="/js/pnotify.custom.min.js"></script>


</head>

<body  data-spy="scroll" data-target="#navbar-scrollspy">
<!--[if lt IE 7]>
<p class="chromeframe">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> or <a href="https://www.google.com/chromeframe/?redirect=true">activate Google Chrome Frame</a> to improve your experience.</p>
<![endif]-->

<nav iid="navbar-scrollspy" class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a href="/"><img src="https://storage.googleapis.com/staticcontent/img/logo.jpg" width="137" height="34" alt="Marketing Town :: For all your marketing needs" class="navbar-img"></a>
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li><a href="#how-it-works">How it works</a></li>
                <li><a href="#pricing">Pricing</a></li>
                <li><a href="#meet-the-team">Meet the team</a></li>
                <li><a href="#tech-essence">Powered by</a></li>
                <li><a href="#jobs">Jobs</a></li>
                <li><a href="#contactus" onclick="showForm1();">Contact us</a></li>

            </ul>
            <c:choose>
                <c:when test="${model.loggedIn eq 'false'}">
                    <div class="navbar-right">
                        <a class="btn btn-primary navbar-btn" href="#" data-toggle="modal" data-target="#loginModal">Sign in</a>
                    </div>
                </c:when>
                <c:otherwise>
                    <div class="navbar-right">
                        <a href="/dashboard/"><button type="button" class="btn btn-primary navbar-btn">Dashboard</button></a>
                    </div>
                </c:otherwise>
            </c:choose>
        </div>
        <c:if test="${not empty param.loginFailed}">
            <div class="alert alert-danger">
                Your login attempt was unsuccessful, please try again or click the forgot password button.<br />
                <a data-toggle="modal" data-target="#forgotPasswordModal" class="btn btn-success">Forgot password</a>
            </div>
        </c:if>
    </div>
</nav>

<section id="homepage" data-speed="15" data-type="background">
    <div class="jumbotron">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center ">
                    <img src="https://storage.googleapis.com/staticcontent/img/ribbon.jpg" alt="The marketing platform of choice" class="img-responsive"/>
                    <h1>Welcome to Marketing Town...</h1>
                    <p>... a low cost, easy to use, reliable, advanced and scalable marketing management solution.</p>
                    <a type="button" href="#why" class="btn btn-primary colorbox" style="width:180px; height:50px; padding:5px 10px; font-size:20px; line-height: 35px;">Get started</a>
                </div>
            </div>
        </div>
    </div>
</section>


<section id="how-it-works" class="striped-background">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <img src="https://storage.googleapis.com/staticcontent/img/howitworksbutton.png" width="209" height="57" alt="How Marketing Town works" />
            </div>
        </div>
        <div class="row pricing-text">
            <div class="col-lg-12">
                <div class="col-sm-3 flat-well features">
                    <h3>Features</h3>
                    <p>Intuitive dashboard and self-service interface.</p>
                    <p>Track, analyse and optimize any KPI's in real-time.</p>
                    <p>Full global coverage.</p>
                    <p>Manage mobile, digital and offline marketing through a single platform.</p>
                    <p>Real-time deduplication and validation.</p>
                    <p>Scale your sources from 1 to 100's.</p>
                    <p>Fast, reliable and secure.</p>
                </div>
                <div class="col-lg-1-5">&nbsp;</div>
                <div class="col-sm-3 flat-well features">
                    <h3>Benefits</h3>
                    <p>All marketing activities in one place.</p>
                    <p>Everything in real time.</p>
                    <p>Check your campaigns on any device.</p>
                    <p>Integrate with all of your existing systems.</p>
                    <p>Increase volume for your campaigns.</p>
                    <p>Monetise your network or data.</p>
                    <p>Full transparency of suppliers and performance.</p>
                </div>
                <div class="col-lg-1-5">&nbsp;</div>
                <div class="col-sm-3 flat-well features">
                    <h3>Support</h3>
                    <p>Full technical and account support if you need it at no extra cost.</p>
                    <p>Marketing Town is constantly being enhanced and further developed.</p>
                    <p>There are many exciting new developments being worked on that we will bring you soon.</p>
                    <p>New features are being rolled out on a weekly basis based on your requests.</p>
                    <p>Landing pages, email creative and other creative assets can be designed for you.</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 text-right pricing-text">
                <a type="button" href="#why" class="btn btn-primary colorbox" style="width:180px; height:50px; padding:5px 10px; font-size:20px; line-height: 35px;">Sign up</a>
            </div>
        </div>
    </div>
</section>

<section id="pricing" data-speed="15" data-type="background">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <img src="https://storage.googleapis.com/staticcontent/img/pricingbutton.png" width="209" height="58" alt="How is Marketing Town priced?" />
            </div>
        </div>
        <div class="row pricing-text">
            <div class="col-lg-12">
                <h3>Don't pay too much for your marketing platform! Marketing Town will charge you a 10% net commission. No hidden costs, simply pay as you go.</h3>
            </div>
        </div>
        <div class="row visible-lg">
            <div class="col-lg-12">
                <div class="col-lg-3 flat-well fake">&nbsp;</div>
                <div class="col-lg-1-5">&nbsp;</div>
                <div class="col-lg-3 flat-well fake">&nbsp;</div>
                <div class="col-lg-1-5">&nbsp;</div>
                <div class="col-lg-3 flat-well fake">&nbsp;</div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="col-sm-3 flat-well transparent">
                    <h3>No extra costs </h3>
                    <p>Annual renewals, monthly retainers, setup fees, all blasts of the past. We charge purely on a commission basis.</p>
                </div>
                <div class="col-lg-1-5">&nbsp;</div>
                <div class="col-sm-3 flat-well transparent">
                    <h3>Email and SMS </h3>
                    <p>Access consumer emails, SMS and even phone calls at cost. Our state of the art technology partners are all market leaders.</p>
                </div>
                <div class="col-lg-1-5">&nbsp;</div>
                <div class="col-sm-3 flat-well transparent">
                    <h3>Hassle free </h3>
                    <p>Five simple steps is what it takes to have a campaign enabled.</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 visible-lg">
                <div class="col-lg-3 flat-well fake">&nbsp;</div>
                <div class="col-lg-1-5">&nbsp;</div>
                <div class="col-lg-3 flat-well fake">&nbsp;</div>
                <div class="col-lg-1-5">&nbsp;</div>
                <div class="col-lg-3 flat-well fake">&nbsp;</div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <div class="col-sm-3 flat-well transparent">
                    <h3>Share</h3>
                    <p>Choose to offer your campaign to all the major suppliers globally. Test them with our caps and measure them using your own KPIs.</p>
                </div>
                <div class="col-lg-1-5">&nbsp;</div>
                <div class="col-sm-3 flat-well transparent">
                    <h3>Commitment free </h3>
                    <p>Take a look around to see the innovative features. If you need something before deciding, let us know and we'll build it for you.</p>
                </div>
                <div class="col-lg-1-5">&nbsp;</div>
                <div class="col-sm-3 flat-well transparent">
                    <h3>Global</h3>
                    <p>Full global coverage for no extra cost. International phone validation, email and SMS deliverability is all part of the package.</p>
                </div>
            </div>
        </div>
        <div class="row pricing-text">
            <div class="col-lg-12 text-right pricing-text">
                <a type="button" href="#why" class="btn btn-primary colorbox" style="width:180px; height:50px; padding:5px 10px; font-size:20px; line-height: 35px;">Sign up</a>
            </div>
        </div>
    </div>
</section>

<section id="meet-the-team" data-speed="15" data-type="background"  class="striped-background">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h2>Meet the team</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-5 text-center">
                <div class="team-member label-primary">
                    <img src="https://storage.googleapis.com/staticcontent/img/peter.png" width="153" height="153" class="team-member-picture" alt="Peter Phelps - Director"/>
                    <p class="team-member-text goldText">Peter Phelps<br />Director</p>
                    <p class="team-member-text goldText">Peter is the Managing Director of Aditus and director of Rudolf Wolff. In 2004 he co-founded Earth Restoration Service and has been its Chairman since. Peter is a Fellow of the Royal Society of Arts (RSA).</p>
                </div>
            </div>
            <div class="col-lg-2">&nbsp;</div>
            <div class="col-lg-5 text-center">
                <div class="team-member team-member-border" style="background-color: #ffffff;">
                    <img src="https://storage.googleapis.com/staticcontent/img/ken.png" width="153" height="153" class="team-member-picture" alt="Ken Leren - Managing Director"/>
                    <p class="team-member-text">Ken Leren<br />Managing Director</p>
                    <p class="team-member-text">Ken is a technology enthusiast and has spent his time in the UK working for mobile and marketing companies. Ken started Tech Essence in 2013 to reshape the marketing industry.</p>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                &nbsp;
            </div>
        </div>
        <div class="row">
            <div class="col-lg-5 text-center">
                <div class="team-member team-member-border" style="background-color: #ffffff;">
                    <img src="https://storage.googleapis.com/staticcontent/img/stewart.jpg" width="153" height="153" class="team-member-picture" alt="Stewart Jordan-Tubbs - Head of Business Development"/>
                    <p class="team-member-text">Stewart Jordan-Tubbs<br />Head of Business Development</p>
                    <p class="team-member-text">Stewart is an expert media sales professional, having gained extensive experience in the print, online and data sectors for the last 12 years. </p>
                </div>
            </div>
            <div class="col-lg-2">&nbsp;</div>
            <div class="col-lg-5 text-center">
                <div class="team-member label-primary">
                    <img src="https://storage.googleapis.com/staticcontent/img/howard.png" width="153" height="153" class="team-member-picture" style="background-color:#ffffff;" alt="Howard Colvin - Advisor"/>
                    <p class="team-member-text goldText">Howard Colvin<br />Advisor</p>
                    <p class="team-member-text goldText">Howard is the CEO of investment company Rudolf Wolff and a trustee of the environmental charity Earth Restoration Service and has numerous interests in film, music and media.</p>
                </div>
            </div>

        </div>
    </div>
</section>

<section id="tech-essence" data-speed="15" data-type="background">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <img src="https://storage.googleapis.com/staticcontent/img/techessence.png" width="209" height="57" alt="How Marketing Town works" />
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 pricing-text">
                <p class="text-primary">Tech Essence was founded in 2013 on the principles of transparency, cost-efficiency and scalability. Since it's inception Tech Essence has developed Marketing Town, its primary product, aimed at releasing the power of technology on to the marketing scene. In March 2014 investment was secured and the product previously having been deployed in it's beta was released in to the wild.</p>
                <p class="text-primary">We aim to help everyone access technology that has previously been reserved for the big boys. At the same time we simplify it, and make it understandable, easy to use and flexible!</p>
            </div>
        </div>
    </div>
</section>

<section id="jobs" data-speed="15" data-type="background">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h2>Jobs</h2>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12 pricing-text">
                <div class="panel-group" id="panelsJobs">
                    <c:set var="setIn" value="true"></c:set>
                    <c:forEach items="${model.jobs}" var="job">
                        <div class="panel panel-primary">
                            <div class="panel-heading">
                                <a data-toggle="collapse" data-parent="#panelsJobs" href="#${job.id}">
                                    <h3 class="panel-title"><i class="fa fa-long-arrow-right"></i> ${job.jobTitle}</h3>
                                </a>
                            </div>
                            <div class="panel-collapse collapse <c:if test="${setIn eq 'true'}">in</c:if> " id="${job.id}">
                                <c:set var="setIn" value="false"></c:set>
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-sm-4">
                                            Job title:
                                        </div>
                                        <div class="col-sm-8">
                                                ${job.jobTitle}
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            Salary:
                                        </div>
                                        <div class="col-sm-8">
                                                ${job.salary}
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            Role type:
                                        </div>
                                        <div class="col-sm-8">
                                                ${job.roleType}
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            Work type:
                                        </div>
                                        <div class="col-sm-8">
                                                ${job.workType}
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-4">
                                            Start date:
                                        </div>
                                        <div class="col-sm-8">
                                                ${job.startDate}
                                        </div>
                                    </div>
                                    <div class="row padding-top">
                                        <div class="col-lg-12">
                                            <h4>Job description</h4>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12">
                                                ${job.description}
                                        </div>
                                    </div>
                                    <div class="row padding-top">
                                        <div class="col-lg-12">
                                            <h4>Your profile</h4>
                                        </div>
                                    </div>
                                    <div class="row">
                                        <div class="col-lg-12">
                                                ${job.profile}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
            </div>
        </div>
        <div class="row">
            <div class="col-lg-12">
                <h4>Please send your cv to <a href="mailto:jobs@tech-essence.com">jobs@tech-essence.com</a></h4>
                <p class="help-block">Dear recruiter, don't call us, we'll call you.</p>
            </div>
        </div>
    </div>
</section>





<section id="contactus" data-speed="15" data-type="background">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h3>Got a question or an enquiry? Please call us on +44 (0)7825 093376 or send us a message below.</h3>
            </div>
        </div>
        <script>
            function showForm1() {
                document.getElementById('form1').style.display = "block";
                document.getElementById('form2').style.display = "block";
            }

            function hideForm() {
                document.getElementById('form1').style.display = "none";
                document.getElementById('form2').style.display = "none";

            }

            var button_beg = '<button id="button" onclick="showhide()" class="btn btn-primary btn-lg" >', button_end = '</button>';
            var show_button = 'Send us a message', hide_button = 'Close form';

            function showhide() {
                var div = document.getElementById("hide_show");
                var showhide = document.getElementById("showhide");
                if (div.style.display !== "none") {
                    div.style.display = "none";
                    button = show_button;
                    showForm1();
                    showhide.innerHTML = button_beg + button + button_end;
                } else {
                    div.style.display = "block";
                    button = hide_button;
                    showhide.innerHTML = button_beg + button + button_end;
                }
            }
            function setup_button(status) {
                if (status == 'Send us a message') {
                    button = hide_button;
                    showForm1();
                } else {
                    button = show_button;
                }
                var showhide = document.getElementById("showhide");
                showhide.innerHTML = button_beg + button + button_end;
            }

            window.onload = function() {
                setup_button('Close form');
                showhide(); // if setup_button is set to 'show' comment this line
            };


        </script>
        <div id="showhide"></div>
        <div id="hide_show">
            <section id="contactus" data-speed="15" data-type="background">
                <div class="row">
                    <div id="form1">
                        <div id="form2" style="display: none">
                            <form id="frm2" name="frm2" action="/contact" method="post" class="sendMessage">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-md-6 col-md-offset-3">
                                            <div class="well well-sm">
                                                <fieldset>
                                                    <legend class="text-center">Contact us</legend>

                                                    <!-- Name input-->
                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label" for="name">Name</label>
                                                        <div class="col-md-9">
                                                            <input id="name" name="name" type="text" placeholder="Your name" class="form-control" required>
                                                        </div>
                                                    </div>


                                                    <!-- Email input-->
                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label" for="email">Your
                                                            E-mail</label>
                                                        <div class="col-md-9">
                                                            <input id="email" name="email" type="email" placeholder="Your email" class="form-control" required >
                                                        </div>
                                                    </div>

                                                    <!-- Message body -->
                                                    <div class="form-group">
                                                        <label class="col-md-3 control-label" for="message">Your
                                                            message</label>
                                                        <div class="col-md-9">
                                                            <textarea class="form-control" id="message" name="message" placeholder="Please enter your message here..." rows="5" required></textarea>
                                                        </div>
                                                    </div>

                                                    <!-- Form actions -->
                                                    <div class="form-group">
                                                        <div class="modal-header">
                                                            <button type="submit" class="btn btn-primary btn-lg" >Submit</button>
                                                        </div>
                                                    </div>
                                                </fieldset>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </form>
                        </div>

                    </div>
                </div>
            </section>
        </div>
    </div>
</section>
<!-- New stuff here finish here  -->
<footer>
    <div class="container">
        <div class="row pricing-text">
            <div class="col-xs-5">
                <p>Tech Essence Ltd<br />
                    10 Fetter Lane<br />
                    London<br />
                    EC4A 1BR</p>
                <p><a onclick="showForm1();" href="#contactus" onclick="showForm1();">Enquiries</a></p>
            </div>
            <div class="col-xs-3">

            </div>
            <div class="col-xs-4">
            </div>
        </div>
    </div>
</footer>



<div class="modal fade" id="forgotPasswordModal" tabindex="-1" role="dialog" aria-labelledby="forgotPasswordModal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form id="scheduleForm" action="/details/forgotPassword/" method="POST" role="form">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="myModalLabel">Sooo, you've forgotten your password! Here's how to reset it:</h4>
                </div>
                <div class="modal-body" id="forgotPasswordBody">
                    <div class="form-group">
                        <div class="column span-12">
                            <input type="email" name="email" placeholder="Enter your email address" required class="form-control" id="emailField" />
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button id="restPassword" type="button" class="btn btn-primary" onclick="myFunction()">Reset password</button>

                    <script>
                        function myFunction() {
                            $.ajax({
                                url: "/details/forgotPassword/",
                                type: "POST",
                                data: {
                                    email : $('#emailField').val()
                                },
                                complete: function(data){
                                    $("#forgotPasswordBody").html("<p class='help-block'>Please check your email for instructions on resetting your password</p>");
                                    $("#restPassword").hide();
                                },
                                dataType: "json"
                            });
                        }

                    </script>

                    <button type="button" class="btn btn-default" data-dismiss="modal" >Close</button>
                </div>
            </form>
        </div>
    </div>
</div>

<div class="modal fade" id="PasswordMessageBox" tabindex="-1" role="dialog" aria-labelledby="PasswordMessageBox" aria-hidden="true">
    <div class="modal-dialog">
    </div>
</div>

<div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="loginModal" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <form class="form" id="loginform" action="/login" method="post">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                    <h4 class="modal-title" id="loginModalHeader">Log in:</h4>
                </div>
                <div class="modal-body">
                    <div class="form-group">
                        <input type="text" name="email" placeholder="Email" class="form-control" required>
                    </div>
                    <div class="form-group">
                        <input type="password" name="password" id="passwordsubmit"placeholder="Password" class="form-control" required>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary">Sign in</button>
                    <button type="button" class="btn btn-warning" data-toggle="modal" data-dismiss="modal" data-target="#forgotPasswordModal">Forgot password</button>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>

                </div>
            </form>

            <script>
                $("#passwordsubmit").keypress(function(e) {
                    if ((e.keyCode == 13) && (e.target.type != "textarea")) {
                        //e.preventDefault();
                        $("#loginform").submit();
                    }
                });
            </script>

        </div>
    </div>
</div>
<div id="signUp" style="display:none">
    <div id="why">
        <nav id="signUpBreadcrumb">
            <ul>
                <li class="active"><a href="#" class="navItem" id="nav1" style="font-size:12px;">Essentials</a></li>
                <li><a href="#" class="navItem" id="nav2" style="font-size:12px;">Getting to know you</a></li>
                <li><a href="#" class="navItem" id="nav3" style="font-size:12px;">Your company</a></li>
            </ul>
        </nav>
        <div id="signUpDetails">
            <form name="signUpForm" id="signUpForm" method="POST" action="/hello/save/">
                <input type="hidden" id="campaign" name="campaign" value="${param.campaign}">
                <input type="hidden" id="company" name="company" value="${param.company}">
                <section id="section1" class="section" style="border-bottom: 0;">
                    <h3>Essentials</h3>
                    <fieldset>
                        <ul id="formSection1" class="formSection">
                            <li>
                                <label for="signupEmail" style="font-weight:normal;">Your email address:</label>
                                <input type="text" id="signupEmail" name="email" placeholder="user@example.com">
                                <span id="emailValidity" class="formValidation"></span>
                            </li>
                            <li>
                                <label for="password" style="font-weight:normal;">Your password: <span class="info">( minimum 5 characters )</span></label>
                                <input type="password" id="password" name="password">
                                <span id="passwordStrength" class="formValidation"></span>
                            </li>
                            <li>
                                <input type="submit" value="Continue" class="submit" id="input1">
                                <p>or <a href="#close" class="colorboxclose">Cancel</a></p>
                            </li>
                        </ul>
                    </fieldset>
                </section>
                <section id="section2" class="section" style="border-bottom: 0;">
                    <h3>Getting to know you</h3>
                    <fieldset>
                        <ul id="formSection2" class="formSection">
                            <li>
                                <label for="firstname" style="font-weight:normal;">Your first name:</label>
                                <input type="text" id="firstname" name="firstName" placeholder="Frank">
                                <span id="firstValidity" class="formValidation"></span>
                            </li>
                            <li>
                                <label for="lastname" style="font-weight:normal;">Your last name:</label>
                                <input type="text" id="lastname" name="lastName" placeholder="Smith">
                                <span id="lastValidity" class="formValidation"></span>
                            </li>
                            <li>
                                <input type="submit" value="Continue" class="submit" id="input2">
                                <p>or <a href="#close" class="colorboxclose">Cancel</a></p>
                            </li>
                        </ul>
                    </fieldset>
                </section>
                <section id="section3" class="section" style="border-bottom: 0;">
                    <h3>Your company</h3>
                    <fieldset>
                        <ul id="formSection3" class="formSection">
                            <li>
                                <label for="companyname" style="font-weight:normal;">Company name:</label>
                                <input type="text" id="companyname" name="companyName" placeholder="Acme Inc.">
                                <span id="companyValidity" class="formValidation"></span>
                            </li>
                            <li>
                                <label for="companyweb" style="font-weight:normal;">Company website:</label>
                                <p class="httpHelper">
                                    http://
                                </p>
                                <input type="text" id="companyweb" name="companyDomain" class="httpInput" placeholder="example.com">
                                <span id="websiteValidity" class="formValidation"></span>
                            </li>
                            <li>
                                <input type="submit" value="Submit" class="submit" id="input3">
                                <p>or <a href="#close" class="colorboxclose">Cancel</a></p>
                            </li>
                        </ul>
                    </fieldset>
                </section>
            </form>
        </div>
    </div>
</div>



<script>
    (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
            m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
    })(window,document,'script','//www.google-analytics.com/analytics.js','ga');

    ga('create', 'UA-42054613-1', 'tech-essence.com');
    ga('send', 'pageview');

</script>
</body>
</html>
