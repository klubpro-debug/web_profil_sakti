<!DOCTYPE html>
<html lang="en">

<head>
<?php 
$this->load->view('/partials_depan/head.php');
?>

</head>

<body class="stretched">
<!--============================= navbar =============================-->
<?php $this->load->view('/partials_depan/navbar.php'); ?>
<!--============================= navbar =============================-->

<?php
        function limit_words($string, $word_limit){
            $words = explode(" ",$string);
            return implode(" ",array_splice($words,0,$word_limit));
        }
?>

<section id="slider" class="slider-element slider-parallax swiper_wrapper full-screen clearfix" data-autoplay="7000" data-speed="650" data-loop="true">
<div class="slider-parallax-inner">
<div class="swiper-container swiper-parent">
<div class="swiper-wrapper">
<?php foreach ($mulmed->result() as $row) :?>     
<div class="swiper-slide dark" style="background-image: url('<?php echo base_url().'assets/images/'.$row->k_mulmed_photo;?>');">
<div class="container clearfix">
<div class="slider-caption slider-caption-center">
<h2 data-animate="fadeInUp"><?php echo $row->k_mulmed_nama; ?></h2>
</div>
</div>
</div>
<?php endforeach;?>  
<?php foreach ($robo->result() as $row) :?>     
<div class="swiper-slide dark" style="background-image: url('<?php echo base_url().'assets/images/'.$row->k_robo_photo;?>');">
<div class="container clearfix">
<div class="slider-caption slider-caption-center">
<h2 data-animate="fadeInUp"><?php echo $row->k_robo_nama; ?></h2>
</div>
</div>
</div>
<?php endforeach;?>  
<?php foreach ($program->result() as $row) :?>     
<div class="swiper-slide dark" style="background-image: url('<?php echo base_url().'assets/images/'.$row->k_program_photo;?>');">
<div class="container clearfix">
<div class="slider-caption slider-caption-center">
<h2 data-animate="fadeInUp"><?php echo $row->k_program_nama; ?></h2>
</div>
</div>
</div>
<?php endforeach;?>  
</div>
<div class="slider-arrow-left"><i class="icon-angle-left"></i></div>
<div class="slider-arrow-right"><i class="icon-angle-right"></i></div>
<div class="slide-number"><div class="slide-number-current"></div><span>/</span><div class="slide-number-total"></div></div>
<div class="swiper-pagination"></div>
</>
</div>
</section>

<section id="content">
<div class="content-wrap">
<div class="promo promo-full promo-border header-stick bottommargin-lg">
<div class="container clearfix">
<div class="heading-block">
<h3>Berita Terbaru :</h3>
</div>
<div id="related-portfolio" class="owl-carousel portfolio-carousel carousel-widget" data-margin="20" data-nav="false" data-autoplay="5000" data-items-xs="1" data-items-sm="2" data-items-xl="3">
<?php foreach ($terbaru->result() as $row) :?> 
    <div class="oc-item">
    <div class="iportfolio">
    <div class="portfolio-image">
    <a href="portfolio-single.html">
    <img src="<?php echo base_url().'assets/images/'.$row->tulisan_gambar;?>" alt="<?php echo $row->tulisan_judul;?>">        
    </a>
    <div class="portfolio-overlay">
    <a href="<?php echo base_url().'assets/images/'.$row->tulisan_gambar;?>" class="left-icon" data-lightbox="image"><i class="icon-line-plus"></i></a>
    <a href="<?php echo site_url('artikel/'.$row->tulisan_slug);?>" class="right-icon"><i class="icon-line-ellipsis"></i></a>
    </div>
    </div>
    <div class="portfolio-desc">
    <h3><a href="<?php echo site_url('artikel/'.$row->tulisan_slug);?>"><?php echo limit_words($row->tulisan_judul,5);?></a></h3>
    <?php foreach ($category->result() as $row) : ?>
    <span><a href="<?php echo site_url('blog/kategori/'.str_replace(" ","-",$row->kategori_nama));?>"><?php echo $row->kategori_nama;?></a></span>
    <?php endforeach;?>   
    </div>
    </div>
    </div>
<?php endforeach;?>

</div>
</div>
</div>
</div>
</section>

<!--============================= footer =============================-->
<?php $this->load->view('/partials_depan/footer.php'); ?>
<!--============================= footer =============================-->

<!--============================= file JS =============================-->
<?php $this->load->view('/partials_depan/js.php') ?>
<!--============================= file JS =============================-->
</body>

</html>
