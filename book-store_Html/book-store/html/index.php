<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>Book Store</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="theme-color" content="#03a6f3">
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:200,300,400,500,600,700,800,900" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" type="text/css" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/styles.css">

</head>

<body>
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/jquery-3.3.1.js"></script>
    <script src="js/jquery-3.4.1.js"></script>
    <script src="sha256.js"></script>
    <script language="javascript"></script>

    <?php
      require 'strconn.php';
      session_start();
     ?>

    <?php
      require 'strconn.php';
      $query="SELECT l.titolo, i.percorso, l.dataP FROM libri AS l, icone AS i WHERE l.codice=i.LIBRO ORDER BY l.dataP DESC LIMIT 4";
      $tab=$dbconn->query($query);

     ?>
     <?php
      require 'strconn.php';
      $queryH="SELECT l.titolo, i.percorso, l.preferiti FROM libri AS l, icone AS i WHERE l.codice=i.LIBRO AND l.preferiti=1 ORDER BY l.titolo";
      $tabH=$dbconn->query($queryH);
      ?>
    <header>
        <!--<div class="header-top">
            <div class="container">
                <div class="row">
                    <div class="col-md-3"><a href="#" class="web-url">www.bookstore.com</a></div>
                    <div class="col-md-6">
                        <h5>Free Shipping Over $99 + 3 Free Samples With Every Order</h5></div>
                    <div class="col-md-3">
                        <span class="ph-number">Call : 800 1234 5678</span>
                    </div>
                </div>
            </div>
        </div>-->
        <div class="main-menu">
            <div class="container">
                <nav class="navbar navbar-expand-lg navbar-light">
                    <a class="navbar-brand" href="index.php"><img src="images/logo.png" alt="logo"></a>
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <ul class="navbar-nav ml-auto">
                            <li class="navbar-item active">
                                <a href="index.php" class="nav-link">Home</a>
                            </li>
                            <li class="navbar-item">
                                <a href="biblio.php" class="nav-link">I libri</a>
                            </li>
                            <?php
                              require 'strconn.php';
                              if(!isset($_SESSION['usr'])){
                                echo("<li class='navbar-item'>
                                    <a href='login.php' class='nav-link'>Login</a>
                                </li>");

                              }
                             ?>
                            <?php
                              require 'strconn.php';
                              if(isset($_SESSION['usr'])){
                                echo("<li class='navbar-item'>
                                    <a href='profilo.php' class='nav-link'>Profilo</a>
                                </li><li class='navbar-item'>
                                    <a href='logout.php' class='nav-link'>Logout</a>
                                </li>");

                              }
                             ?>
                        </ul>

                        <!--<div class="cart my-2 my-lg-0">
                            <span>
                                <i class="fa fa-shopping-cart" aria-hidden="true"></i></span>
                            <span class="quntity">3</span>
                        </div>-->

                        <!--  <form class="form-inline my-2 my-lg-0">
                                <input class="form-control mr-sm-2" type="search" placeholder="Cerca il tuo libro!" aria-label="Search" onfocusout="cercaRap()" id="sh">
                                <a class="fa fa-search" onclick="cercaRap()"><a>
                            </form>-->
                            <div class="search-container">
      <form action="ricercaRap.php">
        <input type="text" placeholder="Search.." name="titolo">
        <button type="submit"><i class="fa fa-search"></i></button>
      </form>
    </div>

                    </div>
                </nav>
            </div>
        </div>
    </header>

    <section class="slider">
        <div class="container">
            <div id="owl-demo" class="owl-carousel owl-theme">
                <div class="item">
                    <div class="slide">
                        <img src="images/slide1.jpg" alt="slide1">
                        <div class="content">
                            <div class="title">
                                <h3>Benvenuti!</h3>
                                <h5>Scoprite i nostri libri online!</h5>
                                <a href="biblio.php" class="btn">Scopri i nostri libri</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="slide">
                        <img src="images/slide2.jpg" alt="slide1">
                        <div class="content">
                            <div class="title">
                                <h3>Classici</h3>
                                <h5>Una raccolta di libri classici tutta da scoprire</h5>
                                <a href="biblio.php" class="btn">Scopri i nostri libri</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="slide">
                        <img src="images/slide3.jpg" alt="slide1">
                        <div class="content">
                            <div class="title">
                                <h3>Prestito sicuro!</h3>
                                <h5>Sar?? possibile prendere in prestito i vostri libri preferiti in tutta sicurezza</h5>
                                <a href="biblio.php" class="btn">Scopri i nostri libri</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="item">
                    <div class="slide">
                        <img src="images/slide4.jpg" alt="slide1">
                        <div class="content">
                            <div class="title">
                                <h3>Prenotazione sicura!</h3>
                                <h5>I libri non sono disponibili? Non preoccupatevi, avete la possibilit?? di prenotare!</h5>
                                <a href="biblio.php" class="btn">Scopri i nostri libri</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="recomended-sec">
        <div class="container">
            <div class="title">
                <h2>I libri pubblicati pi?? recentemente!</h2>
                <hr>
            </div>
            <div class="row">
              <?php
                while($row=$tab->fetch_array(MYSQLI_NUM)){
                  echo("<div class='col-lg-3 col-md-6'>
                      <div class='item'>
                          <img src='{$row[1]}' alt='img'>
                          <h3>{$row[0]}</h3>
                          <div class='hover'>
                              <a href='product-single.php?titolo={$row[0]}'>
                              <span><i class='fa fa-long-arrow-right' aria-hidden='true'></i></span>
                              </a>
                          </div>
                      </div>
                  </div>");
                }

               ?>
                <!--<div class="col-lg-3 col-md-6">
                    <div class="item">
                        <img src="images/img1.jpg" alt="img">
                        <h3>how to be a bwase</h3>
                        <h6><span class="price">$49</span> / <a href="#">Buy Now</a></h6>
                        <div class="hover">
                            <a href="product-single.html">
                            <span><i class="fa fa-long-arrow-right" aria-hidden="true"></i></span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="item">
                        <img src="images/img2.jpg" alt="img">
                        <h3>How to write a book...</h3>
                        <h6><span class="price">$19</span> / <a href="#">Buy Now</a></h6>
                        <span class="sale">Sale !</span>
                        <div class="hover">
                            <a href="product-single.html">
                            <span><i class="fa fa-long-arrow-right" aria-hidden="true"></i></span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="item">
                        <img src="images/img3.jpg" alt="img">
                        <h3>7-day self publish...</h3>
                        <h6><span class="price">$49</span> / <a href="#">Buy Now</a></h6>
                        <div class="hover">
                            <a href="product-single.html">
                            <span><i class="fa fa-long-arrow-right" aria-hidden="true"></i></span>
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6">
                    <div class="item">
                        <img src="images/img4.jpg" alt="img">
                        <h3>wendy doniger</h3>
                        <h6><span class="price">$49</span> / <a href="#">Buy Now</a></h6>
                        <div class="hover">
                            <a href="product-single.html">
                            <span><i class="fa fa-long-arrow-right" aria-hidden="true"></i></span>
                            </a>
                        </div>
                    </div>
                </div>-->
            </div>
        </div>
    </section>
    <section class="about-sec">
        <div class="about-img">
            <figure style="background:url(./images/about-img.jpg)no-repeat;"></figure>
        </div>
        <div class="about-content">
            <h2>Perch?? registrarsi?</h2>
            <p>Facendo la registrazione al nostro portale potrete effettuare prestiti e prenotazioni per i vostri libri preferiti. Inoltre potrete scrivere recensioni riguardanti i libri presenti in libreria!</p>
            <?php
              require 'strconn.php';
              if(!isset($_SESSION['usr'])){
                echo("<div class='btn-sec'>
                    <a href='login.php' class='btn yellow'>Effettua il login</a>
                    <a href='register.php' class='btn black'>Registrati!</a>
                </div>");

              }else{
                echo("<h5>Sei gia registrato al sito!</h5>");
              }
             ?>
        </div>
    </section>
    <section class="recomended-sec">
        <div class="container">
            <div class="title">
                <h2>I libri raccomandati dal bibliotecario!</h2>
                <hr>
            </div>
            <div class="row">
              <?php
                while($rowH=$tabH->fetch_array(MYSQLI_NUM)){
                  echo("<div class='col-lg-3 col-md-6'>
                      <div class='item'>
                          <img src='{$rowH[1]}' alt='img'>
                          <h3>{$rowH[0]}</h3>
                          <div class='hover'>
                              <a href='product-single.php?titolo={$rowH[0]}'>
                              <span><i class='fa fa-long-arrow-right' aria-hidden='true'></i></span>
                              </a>
                          </div>
                      </div>
                  </div>");
                }

               ?>
                <!--<div class="col-lg-2 col-md-3 col-sm-4">
                    <div class="item">
                        <img src="images/r1.jpg" alt="img">
                        <h3><a href="#">Keepers of the kalachakara</a></h3>
                        <h6><span class="price">$19</span> / <a href="#">Buy Now</a></h6>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-4">
                    <div class="item">
                        <img src="images/r2.jpg" alt="img">
                        <h3><a href="#">Keepers of the kalachakara</a></h3>
                        <h6><span class="price">$19</span> / <a href="#">Buy Now</a></h6>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-4">
                    <div class="item">
                        <img src="images/r3.jpg" alt="img">
                        <h3><a href="#">Keepers of the kalachakara</a></h3>
                        <h6><span class="price">$19</span> / <a href="#">Buy Now</a></h6>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-4">
                    <div class="item">
                        <img src="images/r4.jpg" alt="img">
                        <h3><a href="#">Keepers of the kalachakara</a></h3>
                        <h6><span class="price">$19</span> / <a href="#">Buy Now</a></h6>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-4">
                    <div class="item">
                        <img src="images/r5.jpg" alt="img">
                        <h3><a href="#">Keepers of the kalachakara</a></h3>
                        <h6><span class="price">$19</span> / <a href="#">Buy Now</a></h6>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-4">
                    <div class="item">
                        <img src="images/r1.jpg" alt="img">
                        <h3><a href="#">Keepers of the kalachakara</a></h3>
                        <h6><span class="price">$19</span> / <a href="#">Buy Now</a></h6>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-4">
                    <div class="item">
                        <img src="images/r2.jpg" alt="img">
                        <h3><a href="#">Keepers of the kalachakara</a></h3>
                        <h6><span class="price">$19</span> / <a href="#">Buy Now</a></h6>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-4">
                    <div class="item">
                        <img src="images/r3.jpg" alt="img">
                        <h3><a href="#">Keepers of the kalachakara</a></h3>
                        <h6><span class="price">$19</span> / <a href="#">Buy Now</a></h6>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-4">
                    <div class="item">
                        <img src="images/r4.jpg" alt="img">
                        <h3><a href="#">Keepers of the kalachakara</a></h3>
                        <h6><span class="price">$19</span> / <a href="#">Buy Now</a></h6>
                    </div>
                </div>
                <div class="col-lg-2 col-md-3 col-sm-4">
                    <div class="item">
                        <img src="images/r5.jpg" alt="img">
                        <h3><a href="#">Keepers of the kalachakara</a></h3>
                        <h6><span class="price">$19</span> / <a href="#">Buy Now</a></h6>
                    </div>
                </div>-->
            </div><br><br>
            <div class="btn-sec">
                <a href="biblio.php" class="btn gray-btn">Sfoglia tutti i libri</a>
            </div>
        </div>
    </section>
    <!--<section class="features-sec">
        <div class="container">
            <ul>
                <li>
                    <span class="icon"><i class="fa fa-shopping-cart" aria-hidden="true"></i></span>
                    <h3>SAFE SHOPPING</h3>
                    <h5>Safe Shopping Guarantee</h5>
                    <h6>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's...</h6>
                </li>
                <li>
                    <span class="icon return"><i class="fa fa-reply-all" aria-hidden="true"></i></span>
                    <h3>30- DAY RETURN</h3>
                    <h5>Moneyback guarantee</h5>
                    <h6>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's...</h6>
                </li>
                <li>
                    <span class="icon chat"><i class="fa fa-comments" aria-hidden="true"></i></span>
                    <h3>24/7 SUPPORT</h3>
                    <h5>online Consultations</h5>
                    <h6>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's...</h6>
                </li>
            </ul>
        </div>
    </section>-->
    <!--<section class="offers-sec" style="background:url(images/offers.jpg)no-repeat;">
        <div class="cover"></div>
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="detail">
                        <h3>Top 50% OFF on Selected</h3>
                        <h6>We are now offering some good discount
                    on selected books go and shop them</h6>
                        <a href="products.html" class="btn blue-btn">view all books</a>
                        <span class="icon-point percentage">
                            <img src="images/precentagae.png" alt="">
                        </span>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="detail">
                        <h3>Shop $ 500 Above and Get Extra!</h3>
                        <h6>We are now offering some good discount
                    on selected books go and shop them</h6>
                        <a href="products.html" class="btn blue-btn">view all books</a>
                        <span class="icon-point amount"><img src="images/amount.png" alt=""></span>
                    </div>
                </div>
            </div>
        </div>
    </section>-->

    <!--<footer>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="address">
                        <h4>Our Address</h4>
                        <h6>The BookStore Theme, 4th Store
                        Beside that building, USA</h6>
                        <h6>Call : 800 1234 5678</h6>
                        <h6>Email : info@bookstore.com</h6>
                    </div>
                    <div class="timing">
                        <h4>Timing</h4>
                        <h6>Mon - Fri: 7am - 10pm</h6>
                        <h6>??????Saturday: 8am - 10pm</h6>
                        <h6>???Sunday: 8am - 11pm</h6>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="navigation">
                        <h4>Navigation</h4>
                        <ul>
                            <li><a href="index.html">Home</a></li>
                            <li><a href="about.html">About Us</a></li>
                            <li><a href="privacy-policy.html">Privacy Policy</a></li>
                            <li><a href="terms-conditions.html">Terms</a></li>
                            <li><a href="products.html">Products</a></li>
                        </ul>
                    </div>
                    <div class="navigation">
                        <h4>Help</h4>
                        <ul>
                            <li><a href="">Shipping & Returns</a></li>
                            <li><a href="privacy-policy.html">Privacy</a></li>
                            <li><a href="faq.html">FAQ???s</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-5">
                    <div class="form">
                        <h3>Quick Contact us</h3>
                        <h6>We are now offering some good discount
                            on selected books go and shop them</h6>
                        <form>
                            <div class="row">
                                <div class="col-md-6">
                                    <input placeholder="Name" required>
                                </div>
                                <div class="col-md-6">
                                    <input type="email" placeholder="Email" required>
                                </div>
                                <div class="col-md-12">
                                    <textarea placeholder="Messege"></textarea>
                                </div>
                                <div class="col-md-12">
                                    <button class="btn black">Alright, Submit</button>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="copy-right">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <h5>(C) 2017. All Rights Reserved. BookStore Wordpress Theme</h5>
                    </div>
                    <div class="col-md-6">
                        <div class="share align-middle">
                            <span class="fb"><i class="fa fa-facebook-official"></i></span>
                            <span class="instagram"><i class="fa fa-instagram"></i></span>
                            <span class="twitter"><i class="fa fa-twitter"></i></span>
                            <span class="pinterest"><i class="fa fa-pinterest"></i></span>
                            <span class="google"><i class="fa fa-google-plus"></i></span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </footer>-->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script type="text/javascript" src="js/owl.carousel.min.js"></script>
    <script src="js/custom.js"></script>




</body>

</html>
