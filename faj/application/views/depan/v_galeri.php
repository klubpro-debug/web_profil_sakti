<!DOCTYPE html>
<html lang="en">

<head>
<?php 
$this->load->view('/partials_depan/head.php');
?>

</head>

<body class="stretched">
<!--============================= navbar =============================-->
<?php
$this->load->view('/partials_depan/navbar.php');
?>
<!--============================= navbar =============================-->
<section id="page-title">
<div class="container clearfix">
<h1>Galeri</h1>
<ol class="breadcrumb">
<li class="breadcrumb-item"><a href="<?php echo site_url();?>">Home</a></li>
<li class="breadcrumb-item active" aria-current="page">Galeri</li>
</ol>
</div>
</section>

<section id="content">
<div class="content-wrap">
<div class="container clearfix">
<div class="col_full clearfix">
<h3> Foto</h3>
<div class="masonry-thumbs grid-3" data-big="2" data-lightbox="gallery">
<?php foreach ($all_galeri->result() as $row) : ?>
<a href="<?php echo base_url().'assets/images/'.$row->galeri_gambar;?>" data-lightbox="gallery-item"><img class="image_fade" src="<?php echo base_url().'assets/images/'.$row->galeri_gambar;?>" alt="Gallery Thumb 1"></a>
<?php endforeach;?></div>
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
