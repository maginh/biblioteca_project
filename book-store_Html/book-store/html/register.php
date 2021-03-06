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
    <?php
      require 'strconn.php';
      session_start();
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
                        <!--<form class="form-inline my-2 my-lg-0">
                            <input class="form-control mr-sm-2" type="search" placeholder="Search here..." aria-label="Search">
                            <span class="fa fa-search"></span>
                        </form>-->
                    </div>
                </nav>
            </div>
        </div>
    </header>
    <div class="breadcrumb">
        <div class="container">
            <!--<a class="breadcrumb-item" href="index.html">Home</a>
            <span class="breadcrumb-item active">Register</span>-->
        </div>
    </div>
    <section class="static about-sec">
        <div class="container">
            <h1>Registrati al nostro portale!</h1>
            <p>Registrandoti al nostro portale potrai usufruire di numerosi vantaggi. Per esempio potrai effettuare prestiti e prenotazioni dei tuoi libri preferiti! Inoltre avrai la possibilit?? di dire la tua idea inserendola come recensione!</p>
            <div class="form" align="center">
                <form>
                    <!--<div class="row">-->
                        <div class="col-lg-8 col-md-12">
                            <input type="text"placeholder="Inserisci il tuo username preferito!" name="user" id="user" onfocusout="ctrlUser()">
                            <span class="required-star">*</span>
                        </div>
                        <div class="col-lg-8 col-md-12">
                            <input type="password" placeholder="Inserisci una password" name="psw" id="psw">
                            <span class="required-star">*</span>
                        </div>
                        <div class="col-lg-8 col-md-12">
                            <input type="password" placeholder="Ripeti la password" name="repsw" id="repsw">
                            <span class="required-star">*</span>
                        </div>
                        <div class="col-lg-8 col-md-12">
                            <input type="email" placeholder="Inserisci la tua email" name="email" id="email">
                            <span class="required-star">*</span>
                        </div>
                        <div class="col-lg-8 col-md-12">
                            <input type="text" placeholder="Inserisci il tuo nome" name="nome" id="nome">
                            <span class="required-star">*</span>
                        </div>
                        <div class="col-lg-8 col-md-12">
                            <input type="text" placeholder="Inserisci il tuo cognome" name="cogn" id="cogn">
                            <span class="required-star">*</span>
                        </div>
                        <div class="col-lg-8 col-md-12">
                            <input type="text" placeholder="Inserisci il tuo numero di telefono" name="tel" id="tel">
                            <span class="required-star">*</span>
                        </div>
                        <div class="col-lg-8 col-md-12">
                            <input type="button" class="btn black" value="Registrati" onclick="ctrlRegistrazione()">
                            <h5>Sei gia dei nostri? <a href="login.php">Esegui il login!</a></h5>
                        </div>
                    <!--</div>-->
                </form>
            </div>
        </div>
    </section>
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
    <script src="js/jquery-3.3.1.min.js"></script>
  	<script src="js/jquery-3.3.1.js"></script>
  	<script src="js/jquery-3.4.1.js"></script>
    <script src="sha256.js"></script>
    <script language="javascript"></script>

    <script>
    function ctrlUser(){
      var usr=document.getElementById("user").value;
      if(usr!=""){
        var jqxhr=$.ajax({
          type:"POST",
          url:"controlUser.php",
          data:{user:usr},
          dataType:"html"
        });

        jqxhr.done(function(ans){
          if(ans=="1"){
            alert("Non puoi utilizzare questo username, provane un altro.");
            document.getElementById("user").value="";
          }else{
            alert("Questo username ?? utilizzabile. Ora ?? tutto tuo!");
          }
        }).fail(function(){
          alert("Chiamata fallita!!!");
        });
      }

    }

    function ctrlRegistrazione(){
      var usr=document.getElementById("user").value;
      var psw=document.getElementById("psw").value;
      var repsw=document.getElementById("repsw").value;
      var email=document.getElementById("email").value;
      var nome=document.getElementById("nome").value;
      var cognome=document.getElementById("cogn").value;
      var tel=document.getElementById("tel").value;
      var email_reg_exp = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-]{2,})+\.)+([a-zA-Z0-9]{2,})+$/;

      //reg.psw.value=Sha256.hash(reg.psw.value);
      if(!email_reg_exp.test(email.trim())){
        alert("Formato email errato");
        document.getElementById("email").value="";
      }else if(psw!=repsw){
        alert("Le password non coincidono");
        document.getElementById("psw").value="";
        document.getElementById("repsw").value="";
      }else if(usr=="" || psw=="" || repsw=="" || email=="" || nome=="" || cognome=="" || tel==""){
        alert("Inserire tutti i dati!");
      }else{
        psw=Sha256.hash(psw);
        var jqxhr=$.ajax({
          type:"POST",
          url:"registrazione.php",
          data:{user:usr, psw:psw, email:email, nome:nome, cognome:cognome, tel:tel},
          dataType:"html"
        });

        jqxhr.done(function(ans){
          if(ans=="1"){
            alert("Iscrizione avvenuta correttamente. Inizia il tuo viaggio tra le pagine dei tuoi libri preferiti!");
            window.location.href="login.php";
          }else{
            alert("Qualche problema con l'iscrizione? Non disperarti, ritenta e andr?? meglio vedrai!");
            window.location.href="register.php";
          }

        }).fail(function(){
          alert("Chiamata fallita!!!");
        });
      }
    }

    </script>
</body>

</html>
