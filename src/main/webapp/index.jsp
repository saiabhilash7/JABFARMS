<!doctype html>
<html class="no-js" lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>JAB - Organic Farm Agriculture HTML5 Template</title>
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
    <div class="progress-wrap">
        <svg class="progress-circle svg-content" width="100%" height="100%" viewBox="-1 -1 102 102">
            <path d="M50,1 a49,49 0 0,1 0,98 a49,49 0 0,1 0,-98" />
         </svg>
    </div>
    <!-- back to top end -->

    <!-- header-start -->

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
    <!-- sidebar area end -->
    <div class="body-overlay"></div>
    <!-- sidebar area end -->

    <main>
        <!-- banner-area-start -->
        <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Enhanced Banner Section</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css" rel="stylesheet">
    <style>
        /* Reset and Base Styles */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body {
            font-family: 'Roboto', sans-serif;
            line-height: 1.6;
            color: #333;
        }

        /* Banner Area Styling */
        .banner-area {
            position: relative;
            background-size: cover;
            background-position: center;
            background-repeat: no-repeat;
            padding: 200px 0 180px;
            overflow: hidden;
        }

        /* Container and Row */
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

        /* Banner Content */
        .banner-content {
            position: relative;
            z-index: 2;
            background-color: rgba(255, 255, 255, 0.9);
            padding: 50px 40px;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.1);
            max-width: 500px;
        }

        .banner-info {
            text-align: center;
            position: relative;
        }

        /* Banner Icon */
        .baner-icon {
            margin-bottom: 20px;
        }

        .baner-icon i {
            font-size: 60px;
            color: #4CAF50;
            animation: bounce 2s infinite;
        }

        /* Subtitle */
        .banner-content p {
            font-size: 16px;
            color: #666;
            text-transform: uppercase;
            letter-spacing: 2px;
            margin-bottom: 15px;
        }

        /* Main Title */
        .banner-title {
            font-size: 48px;
            font-weight: 700;
            color: #2c3e50;
            line-height: 1.2;
            margin-bottom: 20px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.1);
        }

        /* Banner Shape Background */
        .banner-shape-bg {
            position: absolute;
            bottom: -50px;
            right: -100px;
            z-index: 1;
            opacity: 0.5;
        }

        .banner-shape-bg img {
            max-width: 500px;
            height: auto;
            transform: rotate(-10deg);
        }

        /* Animations */
        @keyframes bounce {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-20px); }
        }

        /* Responsive Adjustments */
        @media (max-width: 1200px) {
            .banner-area {
                padding: 150px 0 130px;
            }

            .banner-content {
                padding: 40px 30px;
            }

            .banner-title {
                font-size: 42px;
            }
        }

        @media (max-width: 991px) {
            .banner-area {
                padding: 100px 0 80px;
                text-align: center;
            }

            .banner-content {
                margin: 0 auto;
            }

            .banner-shape-bg {
                display: none;
            }
        }

        @media (max-width: 576px) {
            .banner-title {
                font-size: 32px;
            }

            .banner-content {
                padding: 30px 20px;
            }
        }
    </style>
</head>
<body>
    <main>
        <!-- Banner Area Start -->
        <div class="banner-area" style="background-image: url('assets/img/bg/hero2.jpg');">
            <div class="container">
                <div class="row justify-content-start">
                    <div class="col-xl-5 col-lg-7 col-md-9 col-12">
                        <div class="banner-content banner-content-2">
                            <div class="banner-info">
                                <div class="baner-icon">
                                    <i class="flaticon-grass"></i>
                                </div>
                                <p>Since 1999</p>
                                <h3 class="banner-title-h1 banner-title">High Quality Products</h3>
                            </div>
                        </div>
                        <div class="banner-shape-bg">
                            <img src="assets/img/bg/banner-bg-shape.png" alt="Banner Background Shape">
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- banner-area-end -->

        <!-- about-area-start-->
        <div class="tp-about-area about-area-2 pt-110 pb-45">
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-xxl-4 col-xl-4 col-lg-4">
                        <div class="tp-section-wrap">
                            <span><i class="flaticon-grass"></i></span>
                            <h3 class="tp-section-title">Farm Ecology Products</h3>
                        </div>
                    </div>
                    <div class="col-xl-1 col-lg-1 d-none d-lg-block">
                        <span class="line-bar"></span>
                    </div>
                    <div class="col-xxl-7 col-xl-7 col-lg-7 align-items-end">
                        <div class="tp-about-content-1">
                            <p>Smells racy free announcing than durable zesty smart exotic far feel. Screamin' affordable secret way absolutely. Evulates vast a real proven works discount secure care. Market invigorate a awesome handcrafted bigger comes
                                newer recommended lifetime.</p>
                            <div class="author-info mt-20">
                                <img src="assets/img/supporters/author.jpg" alt="">
                                <div class="author-content">
                                    <h5>Abhilash</h5>
                                    <span>Founder</span>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- about-area-end -->

        <!-- tp-features-list-area-start -->
       
        <!-- orgainc-product-start -->
        <div class="orgainc-product pt-120 pb-120 h2-gray-bg position-relative">
            <div class="project-bg">
                <img src="assets/img/project/project-bg.png" class="img-fluid" alt="">
            </div>
            <div class="overlay-bg">
                <img src="assets/img/project/product-bg-o.jpg" alt="">
            </div>
            <div class="container">
                <div class="row align-items-center">
                    <div class="col-xl-6 col-lg-6">
                        <div class="organic-image">
                            <img src="assets/img/project/sunny3.jpg" class="img-fluid" alt="">
                            <div class="organic-meta">
                                <h5>30</h5>
                                <span>Years Of Experience</span>
                                <i class="fal fa-arrow-up"></i>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-6 col-lg-6">
                        <div class="organic-product-content pl-80 mt-50">
                            <div class="tp-section-wrap">
                                <span><i class="flaticon-grass"></i></span>
                                <h3 class="tp-section-title">Agriculture & Organic Product Form</h3>
                                <p>Organic food is grown without the use of synthetic chemicals, such as human-made pesticides and fertilizers.</p>
                            </div>
                            <h5 class="organic-product-title mt-40">Fram Value</h5>
                            <div class="row g-0">
                                <div class="col-xl-6 col-lg-6">
                                    <p class="organic-features-info">As a result, the village Kamalpur and its adjacent Upazillas are being turned into an academic-cum commercial center through which the people.</p>
                                </div>
                                <div class="col-xl-6 col-lg-6">
                                    <div class="organic-features-list">
                                        <a href="#">-   Best Food Awards 2021</a>
                                        <a href="#">-   Design Reward 2000</a>
                                        <a href="#">-   Aptitude for Technology</a>
                                        <a href="#">-   An amazing project in mind</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- orgainc-product-end -->

        <!-- company-features-start -->
        <div class="company-features pt-120 pb-90">
            <div class="container">
                <div class="tp-section-wrap text-center">
                    <span><i class="flaticon-grass"></i></span>
                    <h3 class="tp-section-title">Our Company Features</h3>
                    <p>Agriculture was a family business not too long ago. Now a days, automation, scientific advances and better transportation have allowed for industrialization.</p>
                </div>
                <div class="company-features-list mt-50">
                    <div class="row">
                        <div class="col-xl-4 col-lg-4 col-md-6">
                            <div class="company-features-item mb-30">
                                <div class="features-item text-center">
                                    <img src="assets/img/features/features-icon-img-1.png" alt="">
                                    <h4 class="features-item-title">The Best Ingredients</h4>
                                    <p>In order to have a comprehensive guideline as to how to setup agro.</p>
                                </div>
                                <div class="features-item-btton">
                                    <a href="services-details.html" class="features-btn">Read More <i class="fal fa-arrow-right"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-6">
                            <div class="company-features-item mb-30">
                                <div class="features-item text-center">
                                    <img src="assets/img/features/features-icon-img-2.png" alt="">
                                    <h4 class="features-item-title">Best Equipments In Firm</h4>
                                    <p>Guideline as to how to setup agro,In order to have a comprehensive.</p>
                                </div>
                                <div class="features-item-btton">
                                    <a href="services-details.html" class="features-btn">Read More <i class="fal fa-arrow-right"></i></a>
                                </div>
                            </div>
                        </div>
                        <div class="col-xl-4 col-lg-4 col-md-6">
                            <div class="company-features-item mb-30">
                                <div class="features-item text-center">
                                    <img src="assets/img/features/features-icon-img-3.png" alt="">
                                    <h4 class="features-item-title">World Class Meat & Egg</h4>
                                </div>
                                <div class="features-item-btton">
                                    <a href="services-details.html" class="features-btn">Read More <i class="fal fa-arrow-right"></i></a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- company-features-end -->

        <!-- promo-area-start -->
        <div class="tp-promo-area promo-area-1">
            <div class="container">
                <div class="row">
                    <div class="col-xl-7 col-lg-6">
                        <div class="tp-promo-info mb-20">
                            <i class="fal fa-phone-alt"></i>
                            <div class="tp-support">
                                <p>Get Quick Support</p>
                                <h3><a href="tel:3796868">(212) 379 6868</a></h3>
                            </div>
                        </div>
                    </div>
                    <div class="col-xl-5 col-lg-6">
                        <div class="tp-promo-info right mb-20">
                            <div class="tp-support bar">
                                <p>Make Online Order</p>
                                <h3><a href="mailto:info@webmail.com">info@webmail.com</a></h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- promo-area-end -->

        <!-- experice-area-start -->
        <div class="experience-area theme-bg-primary-h1 pt-120 pb-175">
            <div class="container">
                <div class="tp-section-wrap text-center">
                    <span><i class="flaticon-grass"></i></span>
                    <h3 class="tp-section-title">Our Company Features</h3>
                    <p>Agriculture was a family business not too long ago. Now a days, automation, scientific advances and better transportation have allowed for industrialization.</p>
                </div>
                <div class="experience-list mt-50">
                    <div class="row">
                        <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                            <div class="experience-item text-center mb-40">
                                <div class="progress-circular mb-30">
                                    <input type="text" class="knob" value="0" data-rel="90" data-linecap="round" data-width="150" data-height="150" data-bgcolor="#e6e4dc" data-fgcolor="#31512a" data-thickness=".07" data-readonly="true" disabled/>
                                </div>
                                <h5 class="experience-item-title">Organic Food</h5>
                                <p>Sed ut perspiciatis unde omnis iste natus error sit volupt ateaccu</p>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                            <div class="experience-item text-center mb-40">
                                <div class="progress-circular mb-30">
                                    <input type="text" class="knob" value="0" data-rel="61" data-linecap="round" data-width="150" data-height="150" data-bgcolor="#e6e4dc" data-fgcolor="#31512a" data-thickness=".07" data-readonly="true" disabled/>
                                </div>
                                <h5 class="experience-item-title">Worldwide Basement</h5>
                                <p>Lorem ium dolor sit ametad pisicing elit sed simply do ut autem vel eum</p>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                            <div class="experience-item text-center mb-40">
                                <div class="progress-circular mb-30">
                                    <input type="text" class="knob" value="0" data-rel="50" data-linecap="round" data-width="150" data-height="150" data-bgcolor="#e6e4dc" data-fgcolor="#31512a" data-thickness=".07" data-readonly="true" disabled/>
                                </div>
                                <h5 class="experience-item-title">1000+ Active Customer</h5>
                                <p> Nor again is there anyone who loves or pursues or desires to obtain</p>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                            <div class="experience-item text-center mb-40">
                                <div class="progress-circular mb-30">
                                    <input type="text" class="knob" value="0" data-rel="67" data-linecap="round" data-width="150" data-height="150" data-bgcolor="#e6e4dc" data-fgcolor="#31512a" data-thickness=".07" data-readonly="true" disabled/>
                                </div>
                                <h5 class="experience-item-title">100+ Team Mates</h5>
                                <p>At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- experice-area-end -->

     
        <!-- features-product-start -->
        <div class="features-product pt-120 pb-120">
            <div class="container">
                <div class="tp-section-wrap text-center">
                    <span><i class="flaticon-grass"></i></span>
                    <h3 class="tp-section-title">Featured Products</h3>
                    <p>Agriculture was a family business not too long ago. Now a days, automation, scientific advances and better transportation have allowed for industrialization.</p>
                </div>
                <div class="features-product-list mt-50">
                    <div class="row">
                        <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                            <div class="features-product-item text-center mb-30">
                                <div class="product-item-image">
                                    <img src="assets/img/product/product-f-1.jpg" alt="" class="img-fluid">
                                    <div class="product-item-action">
                                        <a href="wishlist.html"><i class="fal fa-exchange"></i></a>
                                        <a href="cart.html"><i class="fal fa-shopping-cart"></i></a>
                                        <a href="#" data-bs-toggle="modal" data-bs-target="#productModalId"><i class="fal fa-eye"></i></a>
                                    </div>
                                </div>
                                <h4 class="product-item-title"><a href="shop-details.html">Organic Pure Tomato</a></h4>
                                <h5 class="product-item-price mb-35">$19.00</h5>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                            <div class="features-product-item text-center mb-30">
                                <div class="product-item-image">
                                    <img src="assets/img/product/product-f-2.jpg" alt="" class="img-fluid">
                                    <div class="product-item-action">
                                        <a href="wishlist.html"><i class="fal fa-exchange"></i></a>
                                        <a href="cart.html"><i class="fal fa-shopping-cart"></i></a>
                                        <a href="#" data-bs-toggle="modal" data-bs-target="#productModalId"><i class="fal fa-eye"></i></a>
                                    </div>
                                </div>
                                <h4 class="product-item-title"><a href="shop-details.html">Pure & Organic Carrot</a></h4>
                                <h5 class="product-item-price mb-35">$13.00</h5>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                            <div class="features-product-item text-center mb-30">
                                <div class="product-item-image">
                                    <img src="assets/img/product/product-f-3.jpg" alt="" class="img-fluid">
                                    <div class="product-item-action">
                                        <a href="wishlist.html"><i class="fal fa-exchange"></i></a>
                                        <a href="cart.html"><i class="fal fa-shopping-cart"></i></a>
                                        <a href="#" data-bs-toggle="modal" data-bs-target="#productModalId"><i class="fal fa-eye"></i></a>
                                    </div>
                                </div>
                                <h4 class="product-item-title"><a href="shop-details.html">Pro Green Corn</a></h4>
                                <h5 class="product-item-price mb-35">$10.00</h5>
                            </div>
                        </div>
                        <div class="col-xl-3 col-lg-3 col-md-6 col-sm-6">
                            <div class="features-product-item text-center mb-30">
                                <div class="product-item-image">
                                    <img src="assets/img/product/product-f-4.jpg" alt="" class="img-fluid">
                                    <div class="product-item-action">
                                        <a href="wishlist.html"><i class="fal fa-exchange"></i></a>
                                        <a href="cart.html"><i class="fal fa-shopping-cart"></i></a>
                                        <a href="#" data-bs-toggle="modal" data-bs-target="#productModalId"><i class="fal fa-eye"></i></a>
                                    </div>
                                </div>
                                <h4 class="product-item-title"><a href="shop-details.html">Organic Pure Grapes</a></h4>
                                <h5 class="product-item-price mb-35">$12.00</h5>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- features-product-end -->

        <!-- video-area-2-start -->
        <div class="video-area-2 position-relative mt-50">
            <div class="video-area play-area" data-background="assets/img/bg/video-bg-2.jpg">
                <div class="play-btn">
                    <a href="https://www.youtube.com/watch?v=L4CpMr5BNls" class="play-text popup-video"><i class="fal fa-play"></i></a>
                </div>
            </div>
            <div class="row g-0 justify-content-end">
                <div class="col-xl-6 col-lg-6 video-col col-md-6 col-12">
                    <div class="video-box theme-bg pt-120 pb-90">
                        <div class="video-content pl-120">
                            <div class="tp-section-wrap tp-section-wrap-video">
                                <span><i class="flaticon-grass"></i></span>
                                <h3 class="tp-section-title">High Quality Growing Organic Foods</h3>
                                <p>Agriculture was a family business not too long ago. Now a days, automation, scientific advances and better transportation have allowed for industrialization.</p>
                            </div>
                            <div class="video-features-list mt-50">
                                <div class="row">
                                    <div class="col-xl-3 col-lg-6 col-md-6 col-6">
                                        <div class="video-features-item mb-30">
                                            <i class="flaticon-save"></i>
                                            <h5 class="video-features-title">Organic Vegetables</h5>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-6 col-md-6 col-6">
                                        <div class="video-features-item mb-30">
                                            <i class="flaticon-digging"></i>
                                            <h5 class="video-features-title">Pure Soil Making</h5>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-6 col-md-6 col-6">
                                        <div class="video-features-item mb-30">
                                            <i class="flaticon-wheat-1"></i>
                                            <h5 class="video-features-title">Organic Crops</h5>
                                        </div>
                                    </div>
                                    <div class="col-xl-3 col-lg-6 col-md-6 col-6">
                                        <div class="video-features-item mb-30">
                                            <i class="flaticon-box"></i>
                                            <h5 class="video-features-title">Food Delivery</h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="video-bg-image">
                                <img src="assets/img/bg/bg-img-1.png" alt="">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- video-area-2-end -->

        <!-- tp-testimonila-tabs -->
        <div class="tp-testimonila-tabs tp-testimonila-tabs-2 pt-300 pb-120 theme-bg-common">
            <div class="container">
                <div class="tp-testimonial-full">
                    <div class="tab-content-pos-bg">
                        <img src="assets/img/client/strobery.png" alt="">
                    </div>
                </div>
                <div class="testimonial__slider p-relative pl-90 pr-90 pt-120 white-bg">
                    <span class="tabs-icon"><i class="flaticon-grass"></i></span>
                    <div class="row justify-content-center">
                        <div class="col-xxl-12">
                            <div class="testimoinial__slider-text swiper-container">
                                <div class="swiper-wrapper">
                                    <div class="testimonial__content swiper-slide text-center">
                                        <p>“ Duis aute lorem ipsum is simply free text irure dolor in reprehenderit in esse nulla pariatur. This is due to their excellent service, competitive pricing and customer support. It’s throughly refresing to get
                                            such a personal touch.”</p>
                                    </div>
                                    <div class="testimonial__content swiper-slide text-center">
                                        <p>“ This is due to their excellent service, competitive pricing and customer support. It’s throughly refresing to get such a personal touch. Duis aute lorem ipsum is simply free text irure dolor in reprehenderit in
                                            esse nulla pariatur. ”</p>
                                    </div>
                                    <div class="testimonial__content swiper-slide text-center">
                                        <p>“ This is due to their excellent service, competitive pricing and customer support. It’s throughly refresing to get such a personal touch. Duis aute lorem ipsum is simply free text irure dolor in reprehenderit in
                                            esse nulla pariatur. ”</p>
                                    </div>
                                    <div class="testimonial__content swiper-slide text-center">
                                        <p>“ It’s throughly refresing to get such a personal touch. Duis aute lorem ipsum is simply free text irure dolor in reprehenderit in esse nulla pariatur. This is due to their excellent service, competitive pricing
                                            and customer support.”</p>
                                    </div>
                                </div>
                            </div>
                            <div class="row justify-content-center">
                                <div class="col-xxl-10 col-xl-12 col-lg-12">
                                    <div class="testimonial__slider-nav swiper-container">
                                        <div class="testimonial__nav swiper-wrapper">
                                            <div class="testimonial__avater swiper-slide d-flex align-items-center">
                                                <div class="testimonial__avater-img mr-30">
                                                    <img src="assets/img/client/client-1.png" alt="">
                                                </div>
                                                <div class="testimonial__avater-content">
                                                    <h4>Miranda H. Halim</h4>
                                                    <span>Founder</span>
                                                </div>
                                            </div>
                                            <div class="testimonial__avater swiper-slide d-flex align-items-center">
                                                <div class="testimonial__avater-img mr-30">
                                                    <img src="assets/img/client/client-2.png" alt="">
                                                </div>
                                                <div class="testimonial__avater-content">
                                                    <h4>Jaasmitha</h4>
                                                    <span>Founder</span>
                                                </div>
                                            </div>
                                            <div class="testimonial__avater swiper-slide d-flex align-items-center">
                                                <div class="testimonial__avater-img mr-30">
                                                    <img src="assets/img/client/client-3.png" alt="">
                                                </div>
                                                <div class="testimonial__avater-content">
                                                    <h4>Bhavya</h4>
                                                    <span>Founder</span>
                                                </div>
                                            </div>
                                            <div class="testimonial__avater swiper-slide d-flex align-items-center">
                                                <div class="testimonial__avater-img mr-30">
                                                    <img src="assets/img/client/client-4.png" alt="">
                                                </div>
                                                <div class="testimonial__avater-content">
                                                    <h4>jaas</h4>
                                                    <span>Founder</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="tp-testimonial-full">
                    <div class="tab-content-pos-bg2">
                        <img src="assets/img/client/tomato.png" alt="">
                    </div>
                </div>
            </div>
        </div>
        <!-- tp-testimonila-tabs -->

        <!-- subscrive-area-start -->
        <div class="subscrive-area pt-90 pb-65">
            <div class="container">
                <div class="row">
                    <div class="col-xl-7">
                        <div class="tp-section-wrap tp-section-wrap-subscrive tp-section-wrap-7">
                            <span><i class="flaticon-grass"></i></span>
                            <h3 class="tp-section-title">Subscribe To Newsletter</h3>
                        </div>
                    </div>
                    <div class="col-xl-5">
                        <form action="#">
                            <input type="email" name="EMAIL" placeholder="Enter your email" required="">
                            <button type="submit">Subscribe <i class="fal fa-arrow-right"></i></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- subscrive-area-end -->

        <!-- latest-news-area -->
        <div class="latest-news-area-2 latest-news-area pt-120 pb-90 fix">
            <div class="container container-fluid">
                <div class="row">
                    <div class="col-xl-4 col-lg-4">
                        <div class="tp-section-wrap blog-slider-content mb-30">
                            <span><i class="flaticon-grass"></i></span>
                            <h3 class="tp-section-title">Blog Insights</h3>
                            <p>Agriculture was a family business not too long ago. Now a days, automation, scientific advances & better transportation have allowed</p>
                        </div>
                    </div>
                    <div class="col-xl-8 col-lg-8">
                        <div class="blog-slider blog-slider_active  owl-carousel">
                            <div class="latest-blog mb-30">
                                <div class="latest-blog-img">
                                    <a href="news-details.html"><img src="assets/img/blog/blog-6.jpg" class="img-fluid" alt=""></a>
                                    <div class="top-catagory">
                                        <a href="shop-details.html" class="postbox__meta">organic</a>
                                    </div>
                                </div>
                                <div class="latest-blog-content">
                                    <div class="latest-post-meta mb-15">
                                        <span class="blog-date"><a href="news-details.html">november 21, 2021 </a></span>
                                    </div>
                                    <h3 class="latest-blog-title">
                                        <a href="news-details.html">Keep them a Green Out the Potato house in here.</a>
                                    </h3>
                                    <div class="blog-btn mt-20">
                                        <a href="news-details.html">Read More</a>
                                    </div>
                                </div>
                            </div>
                            <div class="latest-blog mb-30">
                                <div class="latest-blog-img">
                                    <a href="news-details.html"><img src="assets/img/blog/blog-7.jpg" class="img-fluid" alt=""></a>
                                    <div class="top-catagory">
                                        <a href="shop-details.html" class="postbox__meta">crops</a>
                                    </div>
                                </div>
                                <div class="latest-blog-content">
                                    <div class="latest-post-meta mb-15">
                                        <span class="blog-date"><a href="news-details.html">november 21, 2021 </a></span>
                                    </div>
                                    <h3 class="latest-blog-title">
                                        <a href="news-details.html">Although these terms are often used interchangeably</a>
                                    </h3>
                                    <div class="blog-btn mt-20">
                                        <a href="news-details.html">Read More</a>
                                    </div>
                                </div>
                            </div>
                            <div class="latest-blog mb-30">
                                <div class="latest-blog-img">
                                    <a href="news-details.html"><img src="assets/img/blog/blog-8.jpg" class="img-fluid" alt=""></a>
                                    <div class="top-catagory">
                                        <a href="shop-details.html" class="postbox__meta">vegetable</a>
                                    </div>
                                </div>
                                <div class="latest-blog-content">
                                    <div class="latest-post-meta mb-15">
                                        <span class="blog-date"><a href="news-details.html">november 21, 2021 </a></span>
                                    </div>
                                    <h3 class="latest-blog-title">
                                        <a href="news-details.html">Its have different meanings. Organic foods are grown</a>
                                    </h3>
                                    <div class="blog-btn mt-20">
                                        <a href="news-details.html">Read More</a>
                                    </div>
                                </div>
                            </div>
                            <div class="latest-blog mb-30">
                                <div class="latest-blog-img">
                                    <a href="news-details.html"><img src="assets/img/blog/blog-6.jpg" class="img-fluid" alt=""></a>
                                    <div class="top-catagory">
                                        <a href="shop-details.html" class="postbox__meta">organic</a>
                                    </div>
                                </div>
                                <div class="latest-blog-content">
                                    <div class="latest-post-meta mb-15">
                                        <span class="blog-date"><a href="news-details.html">november 21, 2021 </a></span>
                                    </div>
                                    <h3 class="latest-blog-title">
                                        <a href="news-details.html">Keep them a Green Out the Potato house in here.</a>
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
        </div>
        <!-- latest-news-area -->

        <!-- shop modal start -->
        <div class="modal fade" id="productModalId" tabindex="-1" role="dialog" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered product__modal" role="document">
                <div class="modal-content">
                    <div class="product__modal-wrapper p-relative">
                        <div class="product__modal-close p-absolute">
                            <button data-bs-dismiss="modal"><i class="fal fa-times"></i></button>
                        </div>
                        <div class="product__modal-inner">
                            <div class="row">
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                                    <div class="product__modal-box">
                                        <div class="tab-content" id="modalTabContent">
                                            <div class="tab-pane fade show active" id="nav1" role="tabpanel" aria-labelledby="nav1-tab">
                                                <div class="product__modal-img w-img">
                                                    <img src="assets/img/product/quick-view/quick-view-1.jpg" alt="">
                                                </div>
                                            </div>
                                            <div class="tab-pane fade" id="nav2" role="tabpanel" aria-labelledby="nav2-tab">
                                                <div class="product__modal-img w-img">
                                                    <img src="assets/img/product/quick-view/quick-view-2.jpg" alt="">
                                                </div>
                                            </div>
                                            <div class="tab-pane fade" id="nav3" role="tabpanel" aria-labelledby="nav3-tab">
                                                <div class="product__modal-img w-img">
                                                    <img src="assets/img/product/quick-view/quick-view-3.jpg" alt="">
                                                </div>
                                            </div>
                                            <div class="tab-pane fade" id="nav4" role="tabpanel" aria-labelledby="nav4-tab">
                                                <div class="product__modal-img w-img">
                                                    <img src="assets/img/product/quick-view/quick-view-4.jpg" alt="">
                                                </div>
                                            </div>
                                        </div>
                                        <ul class="nav nav-tabs" id="modalTab" role="tablist">
                                            <li class="nav-item" role="presentation">
                                                <button class="nav-link active" id="nav1-tab" data-bs-toggle="tab" data-bs-target="#nav1" type="button" role="tab" aria-controls="nav1" aria-selected="true">
                                                <img src="assets/img/product/quick-view/nav/quick-nav-1.jpg" alt="">
                                          </button>
                                            </li>
                                            <li class="nav-item" role="presentation">
                                                <button class="nav-link" id="nav2-tab" data-bs-toggle="tab" data-bs-target="#nav2" type="button" role="tab" aria-controls="nav2" aria-selected="false">
                                          <img src="assets/img/product/quick-view/nav/quick-nav-2.jpg" alt="">
                                          </button>
                                            </li>
                                            <li class="nav-item" role="presentation">
                                                <button class="nav-link" id="nav3-tab" data-bs-toggle="tab" data-bs-target="#nav3" type="button" role="tab" aria-controls="nav3" aria-selected="false">
                                          <img src="assets/img/product/quick-view/nav/quick-nav-3.jpg" alt="">
                                          </button>
                                            </li>
                                            <li class="nav-item" role="presentation">
                                                <button class="nav-link" id="nav4-tab" data-bs-toggle="tab" data-bs-target="#nav4" type="button" role="tab" aria-controls="nav4" aria-selected="false">
                                          <img src="assets/img/product/quick-view/nav/quick-nav-4.jpg" alt="">
                                          </button>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-xl-6 col-lg-6 col-md-6 col-sm-12 col-12">
                                    <div class="product__modal-content">
                                        <h4><a href="shop-details.html">Smashed Potato with green chili Regular (± 50 gm)</a></h4>
                                        <div class="product__modal-des mb-40">
                                            <p>Typi non habent claritatem insitam, est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt </p>
                                        </div>
                                        <div class="product__stock">
                                            <span>Availability :</span>
                                            <span>In Stock</span>
                                        </div>
                                        <div class="product__stock sku mb-30">
                                            <span>SKU:</span>
                                            <span>Samsung C49J89: £875, Debenhams Plus</span>
                                        </div>
                                        <div class="product__review d-sm-flex">
                                            <div class="rating rating__shop mb-15 mr-35">
                                                <ul>
                                                    <li><a href="#"><i class="fal fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fal fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fal fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fal fa-star"></i></a></li>
                                                    <li><a href="#"><i class="fal fa-star"></i></a></li>
                                                </ul>
                                            </div>
                                            <div class="product__add-review mb-15">
                                                <span><a href="shop-details.html">1 Review</a></span>
                                                <span><a href="shop-details.html">Add Review</a></span>
                                            </div>
                                        </div>
                                        <div class="product__price">
                                            <span>$560.00</span>
                                        </div>
                                        <div class="product__modal-form">
                                            <form action="#">
                                                <div class="pro-quan-area d-lg-flex align-items-center">
                                                    <div class="product-quantity mr-20 mb-25">
                                                        <div class="cart-plus-minus p-relative"><input type="text" value="1" /></div>
                                                    </div>
                                                    <div class="pro-cart-btn mb-25">
                                                        <button class="tp-btn-h1" type="submit">Add to cart</button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                        <div class="product__modal-links">
                                            <ul>
                                                <li><a href="wishlist.html" title="Add to Wishlist"><i class="fal fa-heart"></i></a></li>
                                                <li><a href="shop-details.html" title="Compare"><i class="far fa-sliders-h"></i></a></li>
                                                <li><a href="cart.html" title="Print"><i class="fal fa-print"></i></a></li>
                                                <li><a href="checkout.html" title="Share"><i class="fal fa-share-alt"></i></a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- shop modal end -->


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
                                <li><a href="viewallcrops">View All Crops</a></li>
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
                        <p class="mb-30 copy-right-text-1">design & copyright by <a href="#">@themepure</a> - 2022</p>
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