<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>Galeri Foto</title>
  <link rel="shorcut icon" href="<?php echo base_url().'theme/images/icon.png'?>">
  <link rel="shorcut icon" type="text/css" href="<?php echo base_url().'theme/images/logo-dark.png'?>">
  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="<?php echo base_url().'theme/css/bootstrap.min.css'?>">
  <!-- Google Fonts -->
  <link href="https://fonts.googleapis.com/css?family=Lora:400,700" rel="stylesheet">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="<?php echo base_url().'theme/css/font-awesome.min.css'?>">
  <!-- Simple Line Font -->
  <link rel="stylesheet" href="<?php echo base_url().'theme/css/simple-line-icons.css'?>">
  <!-- Magnific Popup CSS -->
  <link rel="stylesheet" href="<?php echo base_url().'theme/css/magnific-popup.css'?>">
  <!-- Image Hover CSS -->
  <link rel="stylesheet" type="text/css" href="<?php echo base_url().'theme/css/normalize.css'?>" />
  <link rel="stylesheet" type="text/css" href="<?php echo base_url().'theme/css/set2.css'?>" />

  <!-- Masonry Gallery -->
  <link href="<?php echo base_url().'theme/css/animated-masonry-gallery.css'?>" rel="stylesheet" type="text/css" />
  <!-- Main CSS -->
  <link href="<?php echo base_url().'theme/css/style.css'?>" rel="stylesheet">
</head>

<body>
  <!--============================= HEADERjdgfdf tesss=============================-->
  <div class="header-topbar">
        <div class="container">
            <div class="row">
            <div class="col-xs-6 col-sm-8 col-md-9">
                    
                    </div>
                    <div class="col-xs-6 col-sm-4 col-md-3">
                    
                    </div>
            </div>
        </div>
    </div>
    <div data-toggle="affix" style="border-bottom:solid 1px #f2f2f2;">
    <div class="col-md-12">
    </div> 
  
    <div class="container nav-menu2">
            <div class="row">
                <div class="col-md-12">
                    <nav class="navbar navbar2 navbar-toggleable-md navbar-light bg-faded">
                        <button class="navbar-toggler navbar-toggler2 navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarNavDropdown">
                            <span class="icon-menu"></span>
                        </button>
                        <div class="col-md-3">
                        <img src="<?php echo base_url().'theme/images/logo web copy 31.png'?>" width="80%" class="img-fluid" alt="footer_logo">
            </div>
                        <!--<a href="<?php echo site_url('');?>" class="navbar-brand nav-brand2"><img class="img img-responsive" width="100px;" height="100px"  src="<?php echo base_url().'theme/images/logo-dark.png'?>"></a>-->
                        <div class="collapse navbar-collapse justify-content-end" id="navbarNavDropdown">
                        <ul class="navbar-nav">
                                <li class="nav-item">
                                    <a class="nav-link" href="<?php echo site_url('');?>">Beranda</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="<?php echo site_url('pengumuman');?>">Visimisi</a>
                                </li>
                                <!--
                                <li class="nav-item">
                                    <a class="nav-link" href="<?php echo site_url('about');?>">About</a>
                                </li> -->
                                <li class="nav-item">
                                    <a class="nav-link" href="<?php echo site_url('blog');?>">Berita</a>
                                </li>
                                <!--
                                <li class="nav-item">
                                    <a class="nav-link" href="<?php echo site_url('agenda');?>">Agenda</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="<?php echo site_url('download');?>">Download</a>
                                </li> -->
                                <li class="nav-item">
                                    <a class="nav-link" href="<?php echo site_url('galeri');?>">Galeri</a>
                                </li>
                                <li class="dropdown">
								                <a class="nav-link" href="#">Klub</a>
                                <ul class="dropdown-menu">
									              <li><a href="<?php echo site_url('advokat');?>">Multimedia</a></li>
                                    <li><a href="<?php echo site_url('robo');?>">Robotik</a></li>
                                    <li><a href="<?php echo site_url('program');?>">Programming</a></li>
							                	</ul>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="<?php echo site_url('youtube');?>">Youtube</a>
                                </li>
                                <li class="nav-item">
                                  <a class="nav-link" href="<?php echo site_url('contact');?>">Kontak Kami</a>
                                </li>
                             </ul>
                  </div>
                </nav>
              </div>
            </div>
          </div>
        </div>
    <section>
</section>
<!--//END HEADER -->
  <!--============================= Gallery =============================-->
  <div class="gallery-wrap">
    <div class="container">
<!-- Style 2 -->
<div class="row">
  <div class="col-md-12">
    <h3 class="gallery-style">Gallery Photo</h3>
  </div>
</div><br>
<div class="row">
  <div class="col-md-12">
    <div id="gallery">
      <div id="gallery-content">
        <div id="gallery-content-center">
          <?php foreach ($all_galeri->result() as $row) : ?>
            <a href="<?php echo base_url().'assets/images/'.$row->galeri_gambar;?>" class="image-link2">
             <img src="<?php echo base_url().'assets/images/'.$row->galeri_gambar;?>" class="all img-fluid" alt="#" />
            </a>
          <?php endforeach;?>
       </div>
     </div>
   </div>
 </div>
</div>
<!--//End Style 2 -->

</div>
</div>
<!--//End Gallery -->
<!--============================= FOOTER =============================-->
<footer>
    <div class="container">
        <div class="row">
            <div class="col-md-3">
                <div class="foot-logo">
                    <a href="<?php echo site_url();?>">
                    <img src="<?php echo base_url().'theme/images/Logo Sakti.png'?>" width="120px" height="120px" class="img-fluid" alt="footer_logo">
                    </a>
                     <p><?php echo date('Y');?> © copyright by UKM SAKTI Palangka Raya</a>. <br>All rights reserved.</p>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="sitemap">
                        <h3>Menu Utama</h3>
                        <ul>
                            <li><a href="<?php echo site_url();?>">Beranda</a></li>
                            <li><a href="<?php echo site_url('artikel');?>">Berita </a></li>
                            <li><a href="<?php echo site_url('galeri');?>">Galeri</a></li>
                            <li><a href="<?php echo site_url('contact');?>">Kontak</a></li>
                            <li><a href="<?php echo site_url('advokat');?>">Klub</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="address">
                        <h3>Hubungi Kami</h3>
                        <p><span>Alamat: </span> Palangka Raya Kalimantan Tengah, Jalan Hendrik Timang </p>
                            <ul class="footer-social-icons">
                            <li><a href="https://www.facebook.com/groups/sakti.upr/"><i class="fa fa-facebook fa-fb" aria-hidden="true"></i></a></li>
                                <li><a href="https://www.instagram.com/ukmsaktiupr/"><i class="fa fa-instagram fa-tw" aria-hidden="true"></i></a></li>
                                <li><a href="https://www.youtube.com/channel/UC0QFw_vfv2UIPFn8kK_Se4A"><i class="fa fa-youtube fa-in" aria-hidden="true"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
    <!--//END FOOTER -->
    <!-- jQuery, Bootstrap JS. -->
    <script src="<?php echo base_url().'theme/js/jquery.min.js'?>"></script>
    <script src="<?php echo base_url().'theme/js/tether.min.js'?>"></script>
    <script src="<?php echo base_url().'theme/js/bootstrap.min.js'?>"></script>
    <!-- Plugins -->
    <script src="<?php echo base_url().'theme/js/slick.min.js'?>"></script>
    <script src="<?php echo base_url().'theme/js/waypoints.min.js'?>"></script>
    <script src="<?php echo base_url().'theme/js/counterup.min.js'?>"></script>
    <script src="<?php echo base_url().'theme/js/owl.carousel.min.js'?>"></script>
    <script src="<?php echo base_url().'theme/js/validate.js'?>"></script>
    <script src="<?php echo base_url().'theme/js/tweetie.min.js'?>"></script>
    <!-- Subscribe -->
    <script src="<?php echo base_url().'theme/js/subscribe.js'?>"></script>

    <script src="<?php echo base_url().'theme/js/jquery-ui-1.10.4.min.js'?>"></script>
    <script src="<?php echo base_url().'theme/js/jquery.isotope.min.js'?>"></script>
    <script src="<?php echo base_url().'theme/js/animated-masonry-gallery.js'?>"></script>
    <!-- Magnific popup JS -->
    <script src="<?php echo base_url().'theme/js/jquery.magnific-popup.js'?>"></script>
    <!-- Script JS -->
    <script src="<?php echo base_url().'theme/js/script.js'?>"></script>

  </body>

  </html>
