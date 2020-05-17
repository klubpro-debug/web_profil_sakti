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

<section id="content">
<div class="content-wrap">
<div class="container clearfix">
<div class="fancy-title title-center title-dotted-border">
<div id="oc-images" class="owl-carousel image-carousel carousel-widget" data-margin="20" data-nav="true" data-pagi="true" data-items-xs="2" data-items-sm="3" data-items-lg="1" data-items-xl="1">
<?php foreach ($berita->result() as $row) :?>     
<div class="oc-item">
<img src="<?php echo base_url().'assets/images/'.$row->tulisan_gambar;?>" alt="<?php echo $row->tulisan_judul;?>">
</div>
<?php endforeach;?>  
</div>

<div class="clear mb-5"></div>

<h3>Berita Terbaru</h3>
</div>
<div id="related-portfolio" class="owl-carousel owl-carousel-full portfolio-carousel portfolio-notitle footer-stick carousel-widget" data-margin="0" data-nav="true" data-pagi="false" data-items-xs="1" data-items-sm="2" data-items-md="3" data-items-lg="3">
<?php foreach ($terbaru->result() as $row) :?> 
    <div class="oc-item">
    <div class="iportfolio">
    <div class="portfolio-image">
    <img src="<?php echo base_url().'assets/images/'.$row->tulisan_gambar;?>" alt="<?php echo $row->tulisan_judul;?>">        
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
</section>

<div class="clear mb-5"></div>

<!--============================= footer =============================-->
<?php $this->load->view('/partials_depan/footer.php'); ?>
<!--============================= footer =============================-->

<!--============================= file JS =============================-->
<?php $this->load->view('/partials_depan/js.php') ?>
<!--============================= file JS =============================-->
</body>

</html>
