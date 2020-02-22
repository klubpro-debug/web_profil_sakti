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

</head>

<body>
    <!--============================= HEADER =============================-->
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
									<li><a href="<?php echo site_url('mulmed');?>">Multimedia</a></li>
                                    <li><a href="<?php echo site_url('robo');?>">Robotika</a></li>
                                    <li><a href="<?php echo site_url('program');?>">Programming</a></li>
								</ul>
                                              </li>
                                              <li class="nav-item">
                                    <a class="nav-link" href="<?php echo site_url('youtube');?>">Video</a>
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
	<div class="container" align = "center">
		<div class ="row">
			<div class="col-md-12">
				<div class="slider_img layout_two">
					<div id="carousel" class="carousel slide" data-ride="carousel" >
						<ol class="carousel-indicators">
							<li data-target="#carousel" data-slide-to="0" class="active"></li>
							<li data-target="#carousel" data-slide-to="1"></li>
							<li data-target="#carousel" data-slide-to="2"></li>
						</ol>
						
						<div class="carousel-inner" role="listbox">
							<div class="carousel-item active">
								<img class="d-block" src="<?php echo base_url().'theme/images/klubmulmed.jpg'?>" alt="First slide" width="800px" height="1000" >
								<div class="carousel-caption d-md-block">
									<div class="slider_title">
										<!--<h1>Multimedia</h1>
										<h4>Multimedia adalah penggunaan komputer untuk menyajikan dan menggabungkan teks, suara, gambar, animasi dan video dengan alat bantu (tool) dan koneksi (link) sehingga pengguna dapat ber-(navigasi), berinteraksi, berkarya dan berkomunikasi. Multimedia sering digunakan dalam dunia hiburan. Selain dari dunia hiburan, Multimedia juga diadopsi oleh dunia game.</h4>
										<div class="slider-btn">
											<a href="<?php echo site_url('artikel');?>" class="btn btn-default">Learn more</a>
										</div>-->
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<img class="d-block" src="<?php echo base_url().'theme/images/klubrobo.jpg'?>" alt="Second slide"width="700px" height="1000">
								<div class="carousel-caption d-md-block">
									<div class="slider_title">
										<!--<h1>Robotik</h1>
										<h4>Robotika adalah satu cabang teknologi yang berhubungan dengan ayen, konstruksi, operasi, disposisi struktural, pembuatan, dan aplikasi dari robot. Robotika terkait dengan ilmu pengetahuan bidang elektronika, mesin, mekanika, dan perangkat lunak komputer.</h4>
                                         <div class="slider-btn">
											<a href="<?php echo site_url('mulmed');?>" class="btn btn-default">Learn more</a>
										</div>-->
									</div>
								</div>
							</div>
							<div class="carousel-item">
								<img class="d-block" src="<?php echo base_url().'theme/images/klubprogram.jpg'?>" alt="Third slide"width="700px" height="1000">
								<div class="carousel-caption d-md-block">
									<div class="slider_title">
										<!--<h1>Programming</h1>
										<h4>Pemrograman adalah proses menulis, menguji dan memperbaiki, dan memelihara kode yang membangun suatu program komputer. Kode ini ditulis dalam berbagai bahasa pemrograman.</h4>
										<div class="slider-btn">
											<a href="<?php echo site_url('galeri');?>" class="btn btn-default">Learn more</a>
										</div>-->
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
                            <li><a href="<?php echo site_url('mulmed');?>">Klub</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="address">
                        <h3>Hubungi Kami </h3>
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

        <?php $this->load->view("partials_depan/js.php") ?>
    </body>

    </html>
