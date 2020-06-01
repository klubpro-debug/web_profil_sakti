<header id="header" class="full-header">
    <div id="header-wrap">
        <div class="container clearfix">
            <div id="primary-menu-trigger"><i class="icon-reorder"></i></div>

            <div id="logo">
                <a href="index.html" class="standard-logo"><img
                        src="<?php echo base_url().'theme/images/logo web copy 31.png'?>" alt="SAKTI-UPR"></a>
                <a href="index.html" class="retina-logo"><img
                        src="<?php echo base_url().'theme/images/logo web copy 31.png'?>" alt="SAKTI-UPR"></a>
            </div>

            <nav id="primary-menu">
                <ul class="sf-js-enabled" style="touch-action: pan-y;">
                    <li class="menu"><a href="<?php echo site_url();?>">Beranda</a></li>
                    <li class="menu"><a href="<?php echo site_url('artikel');?>">Berita </a></li>
                    <li class="menu"><a href="<?php echo site_url('galeri');?>">Galeri</a></li>
                    <li class="sub-menu">
                        <a href="javasript:void(0);" class="sf-with-ul">
                            <div>Divisi</div>
                        </a>
                        <ul style="display: none;">
                            <li>
                                <a href="<?php echo site_url('mulmed');?>">
                                    <div>Multimedia</div>
                                </a>
                            </li>
                            <li>
                                <a href="<?php echo site_url('robo');?>">
                                    <div>Robotika</div>
                                </a>
                            </li>
                            <li>
                                <a href="<?php echo site_url('program');?>">
                                    <div>Programming</div>
                                </a>
                            </li>
                        </ul>
                    </li>
                    <li class="menu"><a href="<?php echo site_url('about');?>">About Us</a></li>
                </ul>

            </nav>
</header>