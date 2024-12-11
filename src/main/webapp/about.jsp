<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Agronix - Organic Farm Agriculture HTML5 Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Place favicon.ico in the root directory -->
    <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.png">
    <!-- CSS here -->
    <link rel="stylesheet" href="assets/css/preloader.css">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/meanmenu.css">
    <link rel="stylesheet" href="assets/css/animate.min.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/swiper-bundle.css">
    <link rel="stylesheet" href="assets/css/backToTop.css">
    <link rel="stylesheet" href="assets/css/magnific-popup.css">
    <link rel="stylesheet" href="assets/css/nice-select.css">
    <link rel="stylesheet" href="assets/flaticon/flaticon.css">
    <link rel="stylesheet" href="assets/css/fontAwesome5Pro.css">
    <link rel="stylesheet" href="assets/css/default.css">
    <link rel="stylesheet" href="assets/css/style.css">
</head>

<body>
    <!--[if lte IE 9]>
      <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="https://browsehappy.com/">upgrade your browser</a> to improve your experience and security.</p>
      <![endif]-->

    <!-- Add your site or application content here -->

    <!-- pre loader area start -->
    <div id="loading">
        <div id="loading-center">
            <div id="loading-center-absolute">
                <div class="loading-icon text-center d-sm-flex align-items-center justify-content-center">
                    <img class="loading-logo mr-10" src="assets/img/favicon.png" alt="">
                    <img src="assets/img/preloder.png" alt="">
                </div>
            </div>
        </div>
    </div>
    <!-- pre loader area end -->


    <!-- back to top start -->
   <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Enhanced Navigation with Stylish Login Dropdown</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
    <style>
        /* Reset and base styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Arial', sans-serif;
            line-height: 1.6;
        }

        /* Header Styling */
        .header__area {
            background-color: #f8f9fa;
            box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
        }

        .header-white-area {
            padding: 20px 0;
            background-color: #ffffff;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 0 15px;
        }

        .row {
            display: flex;
            flex-wrap: wrap;
            align-items: center;
        }

        /* Logo Styling */
        .logo img {
            max-height: 70px;
            width: auto;
        }

        /* Navigation Styling */
        .main-menu-h1 {
            flex-grow: 1;
        }

        .main-menu-h1 nav ul {
            display: flex;
            justify-content: flex-end;
            list-style: none;
            gap: 30px;
        }

        .main-menu-h1 nav ul li {
            position: relative;
        }

        .main-menu-h1 nav ul li a {
            text-decoration: none;
            color: #333;
            font-size: 18px;
            font-weight: 600;
            transition: color 0.3s ease, transform 0.3s ease;
            padding: 10px 15px;
            border-radius: 5px;
        }

        .main-menu-h1 nav ul li a:hover,
        .main-menu-h1 nav ul li a.active {
            color: #4CAF50;
            background-color: #f0f0f0;
        }

        /* Highlighted Login Button Styling */
        .main-menu-h1 nav ul li a.special {
            background: linear-gradient(90deg, #4CAF50, #81C784);
            color: #fff;
            border: 2px solid #4CAF50;
            font-weight: bold;
            border-radius: 50px;
            padding: 12px 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
        }

        /* Dropdown Styling */
        .main-menu-h1 nav ul li:hover .sub-menu-h1 {
            display: block;
        }

        .sub-menu-h1 {
            display: none;
            position: absolute;
            top: 100%;
            left: 0;
            background: #fff;
            min-width: 250px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            border-radius: 10px;
            z-index: 1000;
            padding: 10px 0;
        }

        .sub-menu-h1 li {
            width: 100%;
            padding: 5px 0;
        }

        .sub-menu-h1 li a {
            display: block;
            padding: 12px 20px;
            color: #333;
            font-size: 16px;
            font-weight: 600;
            text-align: left;
            transition: background-color 0.3s ease, transform 0.3s ease;
            border-radius: 5px;
            margin: 5px 15px;
            border: 1px solid #ddd;
            background-color: #fff;
        }

        .sub-menu-h1 li a:hover {
            background-color: #f0f0f0;
            transform: scale(1.03);
        }

        /* Social Icons */
        .soical__icon ul {
            display: flex;
            list-style: none;
            gap: 15px;
            justify-content: flex-end;
        }

        .soical__icon ul li a {
            color: #333;
            font-size: 18px;
            transition: color 0.3s ease;
        }

        .soical__icon ul li a:hover {
            color: #4CAF50;
        }
    </style>
</head>
<body>
    <header class="header__area header-area-white">
        <div class="header-white-area theme-bg-secondary-h1" id="header-sticky">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-xl-2 col-lg-3 col-md-8 col-8">
                        <div class="logo">
                            <a href="index.html"><img src="assets/img/logo/logo-2.png" alt="Logo"></a>
                        </div>
                    </div>
                    <div class="col-xl-10 col-lg-9 col-md-4 col-4 d-flex align-items-center justify-content-end">
                        <div class="main-menu-h1 main-menu main-menu-white text-center">
                            <nav id="mobile-menu">
                                <ul>
                                    <li><a href="/" class="active">Home</a></li>
                                    <li><a href="about">About</a></li>
                                    <li>
                                        <a href="#" class="special">Login</a>
                                        <ul class="sub-menu-h1 sub-menu">
                                            <li><a href="adminlogin"><i class="fas fa-user-shield"></i> Admin</a></li>
                                            <li><a href="FarmerRegister"><i class="fas fa-tractor"></i> Farmer</a></li>
                                            <li><a href="UserRegister"><i class="fas fa-user"></i> User</a></li>
                                            <li><a href="ExpertRegistration"><i class="fas fa-user-tie"></i> Expert</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="contact">Contact</a></li>
                                </ul>
                            </nav>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>
</body>
    <!-- sidebar area start -->
    <div class="sidebar__area">
        <div class="sidebar__wrapper">
            <div class="sidebar__close">
                <button class="sidebar__close-btn" id="sidebar__close-btn">
                  <i class="fal fa-times"></i>
               </button>
            </div>
            <div class="sidebar__content">
                <div class="sidebar__logo mb-40">
                    <a href="index.html">
                  <img src="assets/img/logo/logo-2.png" alt="logo">
                  </a>
                </div>
                <div class="sidebar__search mb-25">
                    <form action="#">
                        <input type="text" placeholder="What are you searching for?">
                        <button type="submit"><i class="far fa-search"></i></button>
                    </form>
                </div>
                <div class="mobile-menu fix"></div>
                <div class="sidebar__text d-none d-lg-block">
                    <p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and will give you a complete account of the system and expound the actual teachings of the great explore</p>
                </div>
                <div class="sidebar__img d-none d-lg-block mb-20">
                    <div class="row gx-2">
                        <div class="col-4">
                            <div class="sidebar__single-img w-img mb-10">
                                <a class="image-popups" href="assets/img/project/project-7.jpg">
                              <img src="assets/img/project/project-7.jpg" alt="">
                           </a>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="sidebar__single-img w-img mb-10">
                                <a class="image-popups" href="assets/img/project/project-8.jpg">
                              <img src="assets/img/project/project-8.jpg" alt="">
                           </a>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="sidebar__single-img w-img mb-10">
                                <a class="image-popups" href="assets/img/project/project-9.jpg">
                              <img src="assets/img/project/project-9.jpg" alt="">
                           </a>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="sidebar__single-img w-img mb-10">
                                <a class="image-popups" href="assets/img/project/project-10.jpg">
                              <img src="assets/img/project/project-10.jpg" alt="">
                           </a>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="sidebar__single-img w-img mb-10">
                                <a class="image-popups" href="assets/img/project/project-13.jpg">
                              <img src="assets/img/project/project-13.jpg" alt="">
                           </a>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="sidebar__single-img w-img mb-10">
                                <a class="image-popups" href="assets/img/project/project-12.jpg">
                              <img src="assets/img/project/project-12.jpg" alt="">
                           </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sidebar__map d-none d-lg-block mb-15">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d29176.030811137334!2d90.3883827!3d23.924917699999998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1605272373598!5m2!1sen!2sbd"></iframe>
                </div>
                <div class="sidebar__contact mt-30 mb-20">
                    <h4>Contact Info</h4>

                    <ul>
                        <li class="d-flex align-items-center">
                            <div class="sidebar__contact-icon mr-15">
                                <i class="fal fa-map-marker-alt"></i>
                            </div>
                            <div class="sidebar__contact-text">
                                <a target="_blank" href="https://www.google.com/maps/place/Dhaka/@23.7806207,90.3492859,12z/data=!3m1!4b1!4m5!3m4!1s0x3755b8b087026b81:0x8fa563bbdd5904c2!8m2!3d23.8104753!4d90.4119873">12/A, Mirnada City Tower, NYC</a>
                            </div>
                        </li>
                        <li class="d-flex align-items-center">
                            <div class="sidebar__contact-icon mr-15">
                                <i class="far fa-phone"></i>
                            </div>
                            <div class="sidebar__contact-text">
                                <a href="tel:+012-345-6789">6303317191</a>
                            </div>
                        </li>
                        <li class="d-flex align-items-center">
                            <div class="sidebar__contact-icon mr-15">
                                <i class="fal fa-envelope"></i>
                            </div>
                            <div class="sidebar__contact-text">
                                <a href="mailto:abhilash@gmail.com">abhilash@gmail.com</a>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="sidebar__social">
                    <ul>
                       
                        
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <!-- sidebar area start -->
    <div class="sidebar__area">
        <div class="sidebar__wrapper">
            <div class="sidebar__close">
                <button class="sidebar__close-btn" id="sidebar__close-btn">
                  <i class="fal fa-times"></i>
               </button>
            </div>
            <div class="sidebar__content">
                <div class="sidebar__logo mb-40">
                    <a href="index.html">
                  <img src="assets/img/logo/logo-2.png" alt="logo">
                  </a>
                </div>
                <div class="sidebar__search mb-25">
                    <form action="#">
                        <input type="text" placeholder="What are you searching for?">
                        <button type="submit"><i class="far fa-search"></i></button>
                    </form>
                </div>
                <div class="mobile-menu fix"></div>
                <div class="sidebar__text d-none d-lg-block">
                    <p>But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and will give you a complete account of the system and expound the actual teachings of the great explore</p>
                </div>
                <div class="sidebar__img d-none d-lg-block mb-20">
                    <div class="row gx-2">
                        <div class="col-4">
                            <div class="sidebar__single-img w-img mb-10">
                                <a class="image-popups" href="assets/img/project/project-7.jpg">
                              <img src="assets/img/project/project-7.jpg" alt="">
                           </a>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="sidebar__single-img w-img mb-10">
                                <a class="image-popups" href="assets/img/project/project-8.jpg">
                              <img src="assets/img/project/project-8.jpg" alt="">
                           </a>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="sidebar__single-img w-img mb-10">
                                <a class="image-popups" href="assets/img/project/project-9.jpg">
                              <img src="assets/img/project/project-9.jpg" alt="">
                           </a>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="sidebar__single-img w-img mb-10">
                                <a class="image-popups" href="assets/img/project/project-10.jpg">
                              <img src="assets/img/project/project-10.jpg" alt="">
                           </a>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="sidebar__single-img w-img mb-10">
                                <a class="image-popups" href="assets/img/project/project-13.jpg">
                              <img src="assets/img/project/project-13.jpg" alt="">
                           </a>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="sidebar__single-img w-img mb-10">
                                <a class="image-popups" href="assets/img/project/project-12.jpg">
                              <img src="assets/img/project/project-12.jpg" alt="">
                           </a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="sidebar__map d-none d-lg-block mb-15">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d29176.030811137334!2d90.3883827!3d23.924917699999998!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sbd!4v1605272373598!5m2!1sen!2sbd"></iframe>
                </div>
                <div class="sidebar__contact mt-30 mb-20">
                    <h4>Contact Info</h4>

                    <ul>
                        <li class="d-flex align-items-center">
                            <div class="sidebar__contact-icon mr-15">
                                <i class="fal fa-map-marker-alt"></i>
                            </div>
                            <div class="sidebar__contact-text">
                                <a target="_blank" href="https://www.google.com/maps/place/Dhaka/@23.7806207,90.3492859,12z/data=!3m1!4b1!4m5!3m4!1s0x3755b8b087026b81:0x8fa563bbdd5904c2!8m2!3d23.8104753!4d90.4119873">12/A, Mirnada City Tower, NYC</a>
                            </div>
                        </li>
                        <li class="d-flex align-items-center">
                            <div class="sidebar__contact-icon mr-15">
                                <i class="far fa-phone"></i>
                            </div>
                            <div class="sidebar__contact-text">
                                <a href="tel:+012-345-6789">6303317191</a>
                            </div>
                        </li>
                        <li class="d-flex align-items-center">
                            <div class="sidebar__contact-icon mr-15">
                                <i class="fal fa-envelope"></i>
                            </div>
                            <div class="sidebar__contact-text">
                                <a href="mailto:abhilash@gmail.com">abhilash@mail.com</a>
                            </div>
                        </li>
                    </ul>
                </div>
                <div class="sidebar__social">
                    <ul>
                        <li><a href="#"><i class="fab fa-facebook-f"></i></a></li>
                        <li><a href="#"><i class="fab fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fab fa-youtube"></i></a></li>
                        <li><a href="#"><i class="fab fa-linkedin"></i></a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <!-- sidebar area end -->
    <div class="body-overlay"></div>
    <!-- sidebar area end -->
    <!-- sidebar area start -->

    <main>
        <!-- page__title -start -->
        <div class="page__title align-items-center theme-bg-primary-h1 pt-140 pb-135">
            <div class="container">
                <div class="row">
                    <div class="col-xl-12">
                        <div class="page__title-content text-center">
                            <div class="page_title__bread-crumb">
                                <nav aria-label="breadcrumb">
                                    <nav aria-label="Breadcrumbs" class="breadcrumb-trail breadcrumbs">
                                        <ul>
                                            <li>
                                                <a href="index.html"><span>Home</span></a>
                                            </li>
                                            <li class="trail-item trail-end">
                                                <span>About Us</span>
                                            </li>
                                        </ul>
                                    </nav>
                                </nav>
                            </div>
                            <h3 class="breadcrumb-title breadcrumb-title-sd mt-30">About Us</h3>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- page__title -end -->

        <!-- about-area-start -->
        <div class="about-area pt-120 pb-110">
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 col-lg-6">
                        <div class="tp-section-wrap">
                            <span class="asub-title grace-span">- About Our Farm </span>
                            <h3 class="tp-section-title"> About Our Farm </h3>
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-6">
                        <div class="about-info">
                            <p>At agronix we are passionate about supporting the financial cooperative movement that currently improves the lives of hundreds of millions of people worldwide. Cooperatives are voluntary organisations, open to all persons able
                                to use their services and willing to accept the responsibilities of membership, without discrimination. You can join, and leave, at any time.</p>
                            <p>The Agronix is developing a new modular insurance model that addresses the new generation of customers through digital processes.</p>
                            <div class="about-button mt-30">
                                <a href="contact.html" class="tp-btn-ab">Get In Touch <i class="fal fa-long-arrow-right"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- about-area-end -->

        <!-- tp-supporter__areastart -->
        <div class="tp-supporter__area">
            <div class="container">
                <span class="tp-supporter-sub-title tp-supporter-sub-title-ab mb-25">Happy Users</span>
                <div class="row no-gutters">
                    <div class="col-xl-12">
                        <div class="tp-supporter__slider tp-supporter__slider-ab tp-supporter__slider-active owl-carousel text-center">
                            <div class="tp-supporter__thumb">
                                <a href="#"><img src="assets/img/supporters/user-1.png" alt="client-1"></a>
                            </div>
                            <div class="tp-supporter__thumb">
                                <a href="#"><img src="assets/img/supporters/user-2.png" alt="client-1"></a>
                            </div>
                            <div class="tp-supporter__thumb">
                                <a href="#"><img src="assets/img/supporters/user-3.png" alt="client-1"></a>
                            </div>
                            <div class="tp-supporter__thumb">
                                <a href="#"><img src="assets/img/supporters/user-4.png" alt="client-1"></a>
                            </div>
                            <div class="tp-supporter__thumb">
                                <a href="#"><img src="assets/img/supporters/user-5.png" alt="client-1"></a>
                            </div>
                            <div class="tp-supporter__thumb">
                                <a href="#"><img src="assets/img/supporters/user-6.png" alt="client-1"></a>
                            </div>
                            <div class="tp-supporter__thumb">
                                <a href="#"><img src="assets/img/supporters/user-1.png" alt="client-1"></a>
                            </div>
                            <div class="tp-supporter__thumb">
                                <a href="#"><img src="assets/img/supporters/user-2.png" alt="client-1"></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- tp-supporter__area end -->

        <!-- collaborative-area-start -->
        <div class="collaborative-area pt-120 pb-55">
            <div class="container">
                <div class="row">
                    <div class="col-xl-6 col-lg-6">
                        <div class="cp-info-right mb-30">
                            <h4 class="cp-title mb-15">Collaborative Approach</h4>
                            <p>For a long time finished dairy products has been relying heavily on import. Recently there has been a lot of investment in the dairy sector. Dairy farm is a core agricultural venture with big demand supply gap and space for
                                adding value in the product chain. With its experience in agro value addition, Golden Harvest has started a state of the art dairy farm in Gowainghat, Sylhet.</p>
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-6">
                        <div class="cp-info-left">
                            <h4 class="cp-title mb-15">Responding to Change</h4>
                            <p>Our greatest strength is our commitment to sharing ideas and strategies across practice groups, marshalling our expertise to arrive at the best & most comprehensive solutions for our clients. Ever since, rapid response to shifts
                                in the retirement and health care policy paradigm has been our calling card.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- collaborative-area-end -->

        <!-- video-area-start -->
        <div class="video-area-ab">
            <div class="container">
                <div class="chosse-video">
                    <div class="chosse-video-bg position-relative">
                        <img src="assets/img/bg/video-bg-3.jpg" alt="">
                        <a href="https://www.youtube.com/watch?v=L4CpMr5BNls" class="play-icon play-icon-ab popup-video"><i class="fas fa-play"></i></a>
                    </div>
                </div>
            </div>
        </div>
        <!-- video-area-end -->

        <!-- award-area-start -->
        <div class="award-area pt-120 pb-120">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-xl-5 col-lg-5">
                        <div class="award-image text-center">
                            <img src="assets/img/features/award.png" alt="" class="img-fluid">
                        </div>
                    </div>
                    <div class="col-xl-7 col-lg-7">
                        <div class="tp-section-wrap tp-section-wrap-6">
                            <span class="asub-title grace-span">- awards </span>
                            <h3 class="tp-section-title"> Get More Rewards </h3>
                            <p>At agronix we are passionate about supporting the financial cooperative movement that currently improves the lives of hundreds of millions of people worldwide.</p>
                        </div>
                        <div class="awards-lists mt-50">
                            <div class="row">
                                <div class="col-xl-3 col-lg-6 col-md-6">
                                    <div class="award-item text-center mb-30">
                                        <i class="flaticon-trophy-1"></i>
                                        <h5 class="award-title mt-15">Quality Design 2024</h5>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-6 col-md-6">
                                    <div class="award-item text-center mb-30">
                                        <i class="flaticon-medal-1"></i>
                                        <h5 class="award-title mt-15">Best Milk Award 2024</h5>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-6 col-md-6">
                                    <div class="award-item text-center mb-30">
                                        <i class="flaticon-high-quality"></i>
                                        <h5 class="award-title mt-15">Best <br> Quality 2024</h5>
                                    </div>
                                </div>
                                <div class="col-xl-3 col-lg-6 col-md-6">
                                    <div class="award-item text-center mb-30">
                                        <i class="flaticon-badge"></i>
                                        <h5 class="award-title mt-15">Top Class <br> In 2024 </h5>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- award-area-end -->

        <!-- latest-news-area-start -->
        <div class="latest-news-area latest-news-area-ab pt-120 mb-90">
            <div class="container">
                <div class="tp-section-wrap text-center">
                    <span class="asub-title grace-span"> - News - </span>
                    <h3 class="tp-section-title"> Blog Insights </h3>
                </div>
                <div class="row mt-50">
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="latest-blog mb-30">
                            <div class="latest-blog-img">
                                <a href="news-sidebar.html"><img src="assets/img/blog/blog-1.jpg" class="img-fluid" alt=""></a>
                                <div class="top-catagory">
                                    <a href="shop-details.html" class="postbox__meta">cow farm</a>
                                </div>
                            </div>
                            <div class="latest-blog-content">
                                <div class="latest-post-meta mb-15">
                                    <span class="blog-date"><a href="news-details.html">november 21, 2024</a></span>
                                </div>
                                <h3 class="latest-blog-title">
                                    <a href="news-details.html">Keep them a Green Out in this in Potato house in here.</a>
                                </h3>
                                <div class="blog-btn mt-20">
                                    <a href="news-details.html">Read More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="latest-blog mb-30">
                            <div class="latest-blog-img">
                                <a href="news-details.html"><img src="assets/img/blog/blog-2.jpg" class="img-fluid" alt=""></a>
                                <div class="top-catagory">
                                    <a href="shop-details.html" class="postbox__meta">cow farm</a>
                                </div>
                            </div>
                            <div class="latest-blog-content">
                                <div class="latest-post-meta mb-15">
                                    <span class="blog-date"><a href="news-details.html">november 21, 2024</a></span>
                                </div>
                                <h3 class="latest-blog-title">
                                    <a href="news-details.html">Angus. Black Angus cattle, also called Aberdeen Angus</a>
                                </h3>
                                <div class="blog-btn mt-20">
                                    <a href="news-details.html">Read More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-4 col-lg-4 col-md-6">
                        <div class="latest-blog mb-30">
                            <div class="latest-blog-img">
                                <a href="news-details.html"><img src="assets/img/blog/blog-3.jpg" class="img-fluid" alt=""></a>
                                <div class="top-catagory">
                                    <a href="shop-details.html" class="postbox__meta">cow farm</a>
                                </div>
                            </div>
                            <div class="latest-blog-content">
                                <div class="latest-post-meta mb-15">
                                    <span class="blog-date"><a href="news-details.html">november 21, 2024</a></span>
                                </div>
                                <h3 class="latest-blog-title">
                                    <a href="news-details.html">Are the most popular breed in india, and thanks to some</a>
                                </h3>
                                <div class="blog-btn mt-20">
                                    <a href="news-details.html">Read More</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- latest-news-area-end -->

    </main>

    <!-- footer -->
    <footer>
        <div class="footer-top footer-top-2 pt-80 pb-40">
            <div class="container">
                <div class="footer-features white-bg mb-70">
                    <div class="container">
                        <div class="row align-items-center">
                            <div class="col-xl-6 col-lg-3 col-md-4 col-12">
                                <div class="footer-logo mb-20">
                                    <a href="index.html"><img src="assets/img/logo/logo-2.png" alt=""></a>
                                </div>
                            </div>
                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                <div class="footer-features-item mb-20">
                                    <i class="flaticon-fields"></i>
                                    <h5 class="footer-features-title">We Use <br> New Technology</h5>
                                </div>
                            </div>
                            <div class="col-xl-3 col-lg-4 col-md-4 col-12">
                                <div class="footer-features-item mb-20">
                                    <i class="flaticon-sapling"></i>
                                    <h5 class="footer-features-title">Some of the partners
                                        <br> & clients</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-xl-4 col-lg-4 col-md-4">
                        <div class="footer-widget footer-col-1 mb-40">
                            <h5 class="footer-title mb-35">About Us</h5>
                            <p>Our experts introduce the six major areas to address when becoming Business Anywhere &amp; why these matter in our white paper.</p>
                            <div class="footer-social-icon mt-35">
                                <h4 class="social-icon-title">Social Connect</h4>
                                <a href="#"><i class="fab fa-facebook-f"></i></a>
                                <a href="#"><i class="fab fa-twitter"></i></a>
                                <a href="#"><i class="fab fa-behance"></i></a>
                                <a href="#"><i class="fab fa-youtube"></i></a>
                                <a href="#"><i class="fab fa-linkedin"></i></a>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-3 col-md-4 col-sm-6">
                        <div class="footer-widget footer-col-5 mb-40">
                            <h5 class="footer-title-h1 footer-title mb-30 footer-sm-title">Services</h5>
                            <div class="footer-menu footer-menu-2">
                                <ul>
                                    <li><a href="services-details.html">Organic Food Delivery</a></li>
                                    <li><a href="services-details.html">Agricultural Growth</a></li>
                                    <li><a href="services-details.html">Natural Vegetables</a></li>
                                    <li><a href="services-details.html">Fresh &amp; Pure Crops</a></li>
                                    <li><a href="services-details.html">Online Orders</a></li>
                                    <li><a href="services-details.html">Import &amp; Export Crops</a></li>
                                </ul>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-5 col-lg-5 col-md-4 col-sm-6">
                        <div class="footer-widget footer-col-5 mb-40">
                            <h5 class="footer-title-h1 footer-title mb-30 footer-sm-title">Essential Pages</h5>
                            <ul class="footer-menu-1 footer-menu footer-menu-2 footer-menu-c">
                                <li><a href="about.html">About</a></li>
                                <li><a href="team.html">Our Experts</a></li>
                                <li><a href="news-sidebar.html">News</a></li>
                                <li><a href="contact.html">Contact Us</a></li>
                                <li><a href="contact.html">Terms & Conditions</a></li>
                                <li><a href="shop-details.html">Pricing </a></li>
                                <li><a href="services.html">Support</a></li>
                                <li><a href="project.html">Widemap</a></li>
                                <li><a href="news-details.html">Blog</a></li>
                                <li><a href="services.html">Newsletter</a></li>
                                <li><a href="contact.html">Login/Signup</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="copy-right-area theme-bg-common pt-30">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                        <p class="mb-30 copy-right-text-1">design & copyright by <a href="#">@themepure</a> - 2024</p>
                    </div>
                    <div class="col-xl-6 col-lg-6 col-md-6 col-sm-6 col-12">
                        <div class="payment-img mb-30 f-right">
                            <a href="#"><img src="assets/img/service/payment.png" alt=""></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    <!-- footer -->

    <!-- JS here -->
    <script src="assets/js/vendor/jquery-3.6.0.min.js"></script>
    <script src="assets/js/vendor/waypoints.min.js"></script>
    <script src="assets/js/bootstrap.bundle.min.js"></script>
    <script src="assets/js/meanmenu.js"></script>
    <script src="assets/js/swiper-bundle.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/magnific-popup.min.js"></script>
    <script src="assets/js/parallax.min.js"></script>
    <script src="assets/js/backToTop.js"></script>
    <script src="assets/js/nice-select.min.js"></script>
    <script src="assets/js/counterup.min.js"></script>
    <script src="assets/js/ajax-form.js"></script>
    <script src="assets/js/wow.min.js"></script>
    <script src="assets/js/isotope.pkgd.min.js"></script>
    <script src="assets/js/imagesloaded.pkgd.min.js"></script>
    <script src="assets/js/jquery.appear.js"></script>
    <script src="assets/js/jquery.knob.js"></script>
    <script src="assets/js/main.js"></script>
</body>

</html>