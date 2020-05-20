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

    <?php
        function limit_words($string, $word_limit){
            $words = explode(" ",$string);
            return implode(" ",array_splice($words,0,$word_limit));
        }
?>

    <section id="page-title">
        <div class="container clearfix">
            <h1>Berita</h1>
            <ol class="breadcrumb">
                <li class="breadcrumb-item"><a href="<?php echo site_url();?>">Home</a></li>
                <li class="breadcrumb-item active" aria-current="page">Berita</li>
            </ol>
        </div>
    </section>

    <!--============================= BLOG =============================-->
    <section class="blog-wrap">
        <div class="content-wrap">
            <div class="container clearfix">
                <div class="postcontent nobottommargin clearfix">
                    <?php echo $this->session->flashdata('msg');?>
                    <?php foreach ($data->result() as $row) : ?>
                    <div id="posts">
                        <div class="entry clearfix">
                            <div class="entry-image">
                                <a href="<?php echo base_url().'assets/images/'.$row->tulisan_gambar;?>"
                                    data-lightbox="image"><img class="image_fade"
                                        src="<?php echo base_url().'assets/images/'.$row->tulisan_gambar;?>"
                                        alt="Standard Post with Image"></a>
                            </div>
                            <div class="entry-title">
                                <h2><a
                                        href="<?php echo site_url('artikel/'.$row->tulisan_slug);?>"><?php echo $row->tulisan_judul;?></a>
                                </h2>
                            </div>
                            <ul class="entry-meta clearfix">
                                <li><i class="icon-calendar3"></i> <?php echo $row->tanggal;?></li>
                                <li><a href="#"><i class="icon-user"></i> <?php echo $row->tulisan_author;?></a></li>
                                <li><i class="icon-folder-open"></i> <a
                                        href="#"><?php echo $row->tulisan_kategori_nama;?></a>
                                </li>
                            </ul>
                            <div class="entry-content">
                                <p><?php echo limit_words($row->tulisan_isi, 50).'...';?></p>
                                <a href="<?php echo site_url('artikel/'.$row->tulisan_slug);?>" class="more-link">Read
                                    More</a>
                            </div>
                        </div>
                        <?php endforeach;?>
                    </div>

                </div>
            </div>
        </div>
        </div>


        <div class="sidebar nobottommargin col_last clearfix">
            <div class="sidebar-widgets-wrap">
                <div class="widget clearfix">
                    <div class="tabs nobottommargin clearfix" id="sidebar-tabs">
                        <ul class="tab-nav clearfix">
                            <li><a href="#tabs-1">Populer</a></li>
                            <li><a href="#tabs-2">Terbaru</a></li>
                        </ul>
                        <div class="tab-container">
                            <div class="tab-content clearfix" id="tabs-1">
                                <div id="popular-post-list-sidebar">
                                    <?php foreach ($populer->result() as $row) :?>
                                    <div class="spost clearfix">
                                        <div class="entry-image">
                                            <a href="#" class="nobg"><img class="rounded-circle"
                                                    src="<?php echo base_url().'assets/images/'.$row->tulisan_gambar;?>"
                                                    alt=""></a>
                                        </div>
                                        <div class="entry-c">
                                            <div class="entry-title">
                                                <h4><a
                                                        href="<?php echo site_url('artikel/'.$row->tulisan_slug);?>"><?php echo limit_words($row->tulisan_judul,5).'...';?></a>
                                                </h4>
                                            </div>
                                        </div>
                                    </div>
                                    <?php endforeach;?>
                                </div>
                            </div>
                            <div class="tab-content clearfix" id="tabs-2">
                                <div id="popular-post-list-sidebar">
                                    <?php foreach ($terbaru->result() as $row) :?>
                                    <div class="spost clearfix">
                                        <div class="entry-image">
                                            <a href="#" class="nobg"><img class="rounded-circle"
                                                    src="<?php echo base_url().'assets/images/'.$row->tulisan_gambar;?>"
                                                    alt=""></a>
                                        </div>
                                        <div class="entry-c">
                                            <div class="entry-title">
                                                <h4><a
                                                        href="<?php echo site_url('artikel/'.$row->tulisan_slug);?>"><?php echo limit_words($row->tulisan_judul,5).'...';?></a>
                                                </h4>
                                            </div>
                                        </div>
                                    </div>
                                    <?php endforeach;?>
                                </div>
                            </div>
                            <div class="widget clearfix">
                                <h4>Kategori</h4>
                                <div class="tagcloud">
                                    <?php foreach ($category->result() as $row) : ?>
                                    <a
                                        href="<?php echo site_url('blog/kategori/'.str_replace(" ","-",$row->kategori_nama));?>"><?php echo $row->kategori_nama;?></a>
                                    <?php endforeach;?>
                                </div>
                            </div>


                        </div>
                    </div>
    </section>
    <!--//END BLOG -->


    <!--============================= footer =============================-->
    <?php $this->load->view('/partials_depan/footer.php'); ?>
    <!--============================= footer =============================-->

    <!--============================= file JS =============================-->
    <?php $this->load->view('/partials_depan/js.php') ?>
    <!--============================= file JS =============================-->

</body>

</html>