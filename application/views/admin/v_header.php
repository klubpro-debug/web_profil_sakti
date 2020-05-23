  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
    </ul>

    <!-- SEARCH FORM -->
    <form class="form-inline ml-3">
      <div class="input-group input-group-sm">
        <input class="form-control form-control-navbar" type="search" placeholder="Search" aria-label="Search">
        <div class="input-group-append">
          <button class="btn btn-navbar" type="submit">
            <i class="fas fa-search"></i>
          </button>
        </div>
      </div>
    </form>

    <!-- Right navbar links -->
    <ul class="navbar-nav ml-auto">
      <!-- User Dropdown Menu -->
      <?php
          $id_admin=$this->session->userdata('idadmin');
          $q=$this->db->query("SELECT * FROM pengguna WHERE pengguna_id='$id_admin'");
          $c=$q->row_array();
      ?>
      <li class="nav-item dropdown">
        <a class="nav-link active" data-toggle="dropdown" href="#">
        <img src="<?php echo base_url().'resources/dist/img/'.$c['pengguna_photo'];?>" class="img-circle" height="30px">
        <span><?php echo $c['pengguna_nama']?></span>
        <i class="right fas fa-angle-down"></i>
        </a>
        <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right">
            <div class="dropdown-item dropdown-header">
            <img src="<?php echo base_url().'resources/dist/img/'.$c['pengguna_photo'];?>" class="img-circle elevation-2" height="75px">
            </div>
            <p class="dropdown-item dropdown-header">
            <?php echo $c['pengguna_nama'];?>
              <?php if($c['pengguna_level']=='1'):?>
                <span class="dropdown-item">Administrator</span>
              <?php else:?>
                <span class="dropdown-item">Author</span>
              <?php endif;?>              
            </p>            
          <div class="dropdown-divider"></div>
          <a href="<?php echo base_url().'admin/login/logout'?>" class="dropdown-item dropdown-footer">Sign Out</a>
        </div>
      </li>
      <li class="nav-item">
        <a href="<?php echo base_url().''?>" target="_blank" title="Lihat Website"><span class="dropdown-item mt-1"><i class="fa fa-globe"></i></span></a>
      </li>      
    </ul>
  </nav>
  <!-- /.navbar -->