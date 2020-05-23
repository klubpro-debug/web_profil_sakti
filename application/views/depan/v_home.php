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
