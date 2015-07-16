<!DOCTYPE html>
<html lang="<ion:current_lang />">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><ion:meta_title /></title>
    <meta name="description" content="<ion:meta_description />" />
    <meta name="keywords" content="<ion:meta_keywords />" />
    <link href="<ion:theme_url/>assets/css/bootstrap.css" rel="stylesheet">
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]--> 
    
    <!-- bootstrap -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
    <script src="<ion:theme_url/>assets/js/bootstrap.min.js"></script>
    
    <!-- Important Owl stylesheet -->
    <link rel="stylesheet" href="<ion:theme_url/>assets/css/owl.carousel.css">
     
    <!-- Default Theme -->
    <link rel="stylesheet" href="<ion:theme_url/>assets/css/owl.theme.css">
     
    <!-- Include js plugin -->
    <script src="<ion:theme_url/>assets/js/owl.carousel.js"></script>
    <script src="<ion:theme_url/>assets/js/main.js"></script>
    
    <!-- lightbox -->
    <script src="<ion:theme_url/>assets/lightbox/js/lightbox.min.js"></script>
    <link href="<ion:theme_url/>assets/lightbox/css/lightbox.css" rel="stylesheet" />
    
    <!-- owlcarousel -->
    
    <!-- main styles -->
    <link href="<ion:theme_url/>assets/css/main.css" rel="stylesheet"> 
  </head>
  <body>
  <img src="<ion:theme_url/>assets/images/bc1.png" id="bg" alt="Background" />
  <div class="container">
    <header>   
      <div class="row">         
        <div class="col-md-3">
          <a href="<ion:home_url />">
            <h1>Fit Studio Rožňava</h1>
          </a>
        </div>
        <div class="col-md-9">
          <nav class="navbar">
            <div class="navbar-header <ion:article:name />">
              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
              </button>
            </div><!-- /.navbar-header -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              <ion:navigation tag="ul" class="nav navbar-nav navbar-right" menu="main">
                <li>
                  <a href="<ion:url />"<ion:is_active> class="active"</ion:is_active>><ion:title /></a>
                </li>
              </ion:navigation>
            </div><!-- /.navbar-collapse -->
          </nav>
        </div>
      </div><!-- /.row -->
    </header>
    
    