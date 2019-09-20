<!DOCTYPE html>
<html lang="en">

<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Beranda</title>
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
    <!-- Slider / Carousel -->
    <link rel="stylesheet" href="<?php echo base_url().'theme/css/slick.css'?>">
    <link rel="stylesheet" href="<?php echo base_url().'theme/css/slick-theme.css'?>">
    <link rel="stylesheet" href="<?php echo base_url().'theme/css/owl.carousel.min.css'?>">
    <!-- Main CSS -->
    <link href="<?php echo base_url().'theme/css/style.css'?>" rel="stylesheet">
    <?php
        function limit_words($string, $word_limit){
            $words = explode(" ",$string);
            return implode(" ",array_splice($words,0,$word_limit));
        }
    ?>
    <style>
    .topbar1{
        background-image: linear-gradient(yellow,green);
	font-family: merriweather;
    }
    footer{
        background:green;
    }
    </style>

</head>

<body>
    <!--============================= HEADER =============================-->
    <div class="header-topbar topbar1">
        <div class="container">
            <div class="row">
                <div class="col-xs-2 col-sm-2 col-md-2">
				<img class="img img-responsive" width="100px;" height="100px"  src="<?php echo base_url().'theme/images/logo upr.png'?>">				
                </div>
                <div class="col-xs-8 col-sm-8 col-md-8">
				<h2 align="center">SARANA KREATIFITAS TEKNOLOGI INFORMASI</h2>
                </div>
				<div class="col-xs-2 col-sm-2 col-md-2">
				<img class="img img-responsive" width="100px;" height="100px"  src="<?php echo base_url().'theme/images/Logo Sakti.png'?>">				
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
                        <div class="col-md-2">
							<h3>UKM SAKTI</h3></a>
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
	  
<!--============================= carousel =============================-->
<section>
	<div class="container">
		<div ="row">
			<div ="col-md-8">
				<div class="slider_img layout_two">
					<div id="carousel" class="carousel slide" data-ride="carousel">
						<ol class="carousel-indicators">
							<li data-target="#carousel" data-slide-to="0" class="active"></li>
							<li data-target="#carousel" data-slide-to="1"></li>
							<li data-target="#carousel" data-slide-to="2"></li>
						</ol>
						<div class="carousel-inner" role="listbox">
							<div class="carousel-item active">
								<img class="d-block" src="<?php echo base_url().'theme/images/slider.jpg'?>" alt="First slide">
								<div class="carousel-caption d-md-block">
									<div class="slider_title">
										<h1>Cecil B. DeMille</h1>
										<h4>Prinsip merupakan hukum alam yang tidak dapat dilanggar. Kita tidak mungkin
			melanggar hukum tersebut, kita hanya dapat menghancurkan diri kita karena melanggar hukum-hukum itu.</h4>
										<div class="slider-btn">
											<a href="<?php echo site_url('artikel');?>" class="btn btn-default">Learn more</a>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<img class="d-block" src="<?php echo base_url().'theme/images/slider-2.jpg'?>" alt="Second slide">
								<div class="carousel-caption d-md-block">
									<div class="slider_title">
										<h1>Thomas Malthus</h1>
										<h4>Telah tampak bahwa dari hukum-hukum alam kita yang tak terelakkan, beberapa manusia harus menderita karena kekurangan. Ini adalah orang-orang yang tidak bahagia yang, dalam undian besar kehidupan, telah melukis sesuatu yang kosong.</h4>
										<div class="slider-btn">
											<a href="<?php echo site_url('advokat');?>" class="btn btn-default">Learn more</a>
										</div>
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<img class="d-block" src="<?php echo base_url().'theme/images/slider-3.jpg'?>" alt="Third slide">
								<div class="carousel-caption d-md-block">
									<div class="slider_title">
										<h1>Max Planck</h1>
										<h4>Kita tidak punya hak untuk berasumsi bahwa setiap hukum-hukum fisika yang ada, atau jika mereka telah ada sampai sekarang, bahwa mereka akan terus ada dengan cara yang sama di masa depan.</h4>
										<div class="slider-btn">
											<a href="<?php echo site_url('galeri');?>" class="btn btn-default">Learn more</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<a class="carousel-control-prev" href="#carousel" role="button" data-slide="prev">
							<i class="icon-arrow-left fa-slider" aria-hidden="true"></i>
							<span class="sr-only">Previous</span>
						</a>
						<a class="carousel-control-next" href="#carousel" role="button" data-slide="next">
							<i class="icon-arrow-right fa-slider" aria-hidden="true"></i>
							<span class="sr-only">Next</span>
						</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</section>
<!--//END HEADER -->
<!--============================= ABOUT =============================-->
<section class="clearfix about about-style2">
    <div class="container">
        <div class="row">
        
        </div>
    </div>
</section>
<!--//END ABOUT -->
<!--============================= OUR COURSES =============================-->
<section class="our_courses">
    <div class="container">
        <div class="row">
            <div class="col-md-12">
                <h2>Berita Terbaru</h2>
            </div>
        </div>
        <div class="row">
          <?php foreach ($berita->result() as $row) :?>
            <div class="col-xs-12 col-sm-6 col-md-6 col-lg-3 col1" >
                <div  class="courses_box mb-4">
             
                    <div class="course-img-wrap">
                        <img src="<?php echo base_url().'assets/images/'.$row->tulisan_gambar;?>" class="img-fluid" alt="courses-img">
                    </div>
                    <!-- // end .course-img-wrap -->
                    
                        <a href="<?php echo site_url('artikel/'.$row->tulisan_judul);?>" class="course-box-content">
                            <h3 style="text-align:center;height: 230px; "><?php echo $row->tulisan_judul;?></h3>
                        </a>                   
               

                </div>
            </div>
          <?php endforeach;?>
        </div> <br>
        <div class="row">
            <div class="col-md-12 text-center">
                <a href="<?php echo site_url('artikel');?>" class="btn btn-default btn-courses">View More</a>
            </div>
        </div>
    </div>
</section>
<!--//END OUR COURSES -->
<!--============================= EVENTS =============================-->
<!--
<section class="event">
    <div class="container">
        <div class="row">
            <div class="col-lg-6">
                <div class="event-img2">
                <?php foreach ($pengumuman->result() as $row) :?>
                <div class="row">
                    <div class="col-sm-3"> <img src="<?php echo base_url().'theme/images/announcement-icon.png'?>
                    <div class="col-sm-9"> <h3><a href="<?php echo site_url('pengumuman');?>"><?php echo $row->pengumuman_judul;?></a></h3>
                      <span><?php echo $row->tanggal;?></span>
                      <p><?php echo limit_words($row->pengumuman_deskripsi,10).'...';?></p>

                    </div>
                </div>
                <?php endforeach;?>
                </div>
            </div>
            <div class="col-lg-6">
                <div class="row">
                    <div class="col-md-12">
                      <?php foreach ($agenda->result() as $row):?>
                        <div class="event_date">
                            <div class="event-date-wrap">
                                <p><?php echo date("d", strtotime($row->agenda_tanggal));?></p>
                                <span><?php echo date("M. y", strtotime($row->agenda_tanggal));?></span>
                            </div>
                        </div>
                        <div class="date-description">
                            <h3><a href="<?php echo site_url('agenda');?>"><?php echo $row->agenda_nama;?></a></h3>
                            <p><?php echo limit_words($row->agenda_deskripsi,10).'...';?></p>
                            <hr class="event_line">
                        </div>
                        <?php endforeach;?>

                    </div>
                </div>

            </div>
        </div>
    </div>
</section> -->
<!--//END EVENTS -->
<!--============================= DETAILED CHART =============================
<div class="detailed_chart">
    <div class="container">
        <div class="row">
            <div class="col-xs-12 col-sm-6 col-md-3 chart_bottom">
              
            </div>
            <div class="col-xs-12 col-sm-6 col-md-3 chart_bottom chart_top">
                  <div class="chart-img">
                    <img src="<?php echo base_url().'theme/images/chart-icon_1.png'?>" class="img-fluid" alt="chart_icon">
                </div>
                <div class="chart-text">
                    <p><span class="counter"><?php echo $tot_advokat;?></span> advokat
                    </p>
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-3 chart_top">
                <div class="chart-img">
                    <img src="<?php echo base_url().'theme/images/chart-icon_3.png'?>" class="img-fluid" alt="chart_icon">
                </div>
                <div class="chart-text">
                    <p><span class="counter"><?php echo $tot_files;?></span> Download
                    </p>
                </div>
            </div>
            <div class="col-xs-12 col-sm-6 col-md-3">
                <div class="chart-img">
                    <img src="<?php echo base_url().'theme/images/chart-icon_4.png'?>" class="img-fluid" alt="chart_icon">
                </div>
                <div class="chart-text">
                    <p><span class="counter"><?php echo $tot_agenda;?></span> Agenda</p>
                </div>
            </div>
        </div>
    </div>
</div> -->
<!--//END DETAILED CHART -->
<!--============================= FOOTER =============================-->
<footer>
    <div class="container con1">
        <div class="row">
            <div class="col-md-3 ">
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
                        <h3>Hubungi Kami </h3>
                        <p><span>Alamat: </span> Palangka Raya Kalimantan Tengah, Jalan Hendrik Timang </p>
                            <ul class="footer-social-icons">
                                <li><a href="#"><i class="fa fa-facebook fa-fb" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-linkedin fa-in" aria-hidden="true"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter fa-tw" aria-hidden="true"></i></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </footer>
        <!--//END FOOTER  -->

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
        <!-- Script JS -->
        <script src="<?php echo base_url().'theme/js/script.js'?>"></script>
    </body>

    </html>
