<!DOCTYPE html>
<html>

<head>
  <?php $this->load->view("partials_admin/head.php") ?>
  <?php
    function limit_words($string, $word_limit){
        $words = explode(" ",$string);
        return implode(" ",array_splice($words,0,$word_limit));
    }
  ?>

</head>

<body class="hold-transition sidebar-mini layout-fixed">
  <div class="wrapper">

    <!--Header-->
    <?php
    $this->load->view('admin/v_header');
  ?>

    <!-- Main Sidebar Container -->
    <aside class="main-sidebar sidebar-dark-primary elevation-4">
      <!-- Brand Logo -->
      <a href="<?php echo base_url().''?>" class="brand-link">
        <img src="dist/img/" alt="Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
        <span class="brand-text font-weight-light">UHO</span>
      </a>

      <!-- Sidebar -->
      <div class="sidebar">

        <!-- Sidebar Menu -->
        <nav class="mt-2">
          <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
            <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
            <li class="nav-item has-treeview menu-open">
              <a href="#" class="nav-link active">
                <i class="nav-icon fas fa-copy"></i>
                <p>
                  Artikel
                  <i class="right fas fa-angle-left"></i>
                </p>
              </a>
              <ul class="nav nav-treeview">
                <li class="nav-item">
                  <a href="<?php echo base_url().'admin/artikel'?>" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>List Artikel</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="<?php echo base_url().'admin/artikel/add_artikel'?>" class="nav-link active">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Tambah Artikel</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="<?php echo base_url().'admin/kategori'?>" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Kategori</p>
                  </a>
                </li>
              </ul>
            </li>
            <li class="nav-item has-treeview">
              <a href="#" class="nav-link">
                <i class="nav-icon fas fa-copy"></i>
                <p>
                  Banner
                  <i class="right fas fa-angle-left"></i>
                </p>
              </a>
              <ul class="nav nav-treeview">
                <li class="nav-item">
                  <a href="<?php echo base_url().'admin/banner'?>" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>List Banner</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="<?php echo base_url().'admin/banner/add_banner'?>" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Post Banner</p>
                  </a>
                </li>
              </ul>
            </li>                  
            <li class="nav-item">
              <a href="#" class="nav-link">
                <i class="nav-icon fa fa-sign-out-alt"></i>
                <p>
                  Sign Out
                </p>
              </a>
            </li>
          </ul>
        </nav>
        <!-- /.sidebar-menu -->
      </div>
      <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->
      <div class="content-header">
        <div class="container-fluid">
          <div class="row mb-2">
            <div class="col-sm-6">
              <h1 class="m-0 text-dark">Tambah Artikel</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active">Tambah Artikel</li>
              </ol>
            </div><!-- /.col -->
          </div><!-- /.row -->
        </div><!-- /.container-fluid -->
      </div>
      <!-- /.content-header -->

      <!-- Main content -->
      <section class="content">
        <div class="row">
          <div class="col-md-12">
            <div class="container-fluid">
              <form action="<?php echo base_url().'admin/artikel/simpan_artikel'?>" method="post"
                enctype="multipart/form-data">

                <div class="card card-outline card-danger">
                  <div class="card-header">
                    <h3 class="card-title">
                    Tambah Artikel
                    </h3>
                    <!-- /. tools -->
                  </div>
                  <div class="card-body pad">
                    <div class="row">
                      <div class="col-md-10">
                        <input type="text" name="xjudul" class="form-control" placeholder="Judul artikel" required />
                      </div>
                      <!-- /.col -->
                      <div class="col-md-2">
                        <div class="form-group">
                          <button type="submit" class="btn btn-primary btn-flat pull-right"><span
                              class="fa fa-pencil-alt"></span> Publish</button>
                          <!-- /.form-group -->
                        </div>
                        <!-- /.col -->
                      </div>
                      <!-- /.row -->
                    </div>
                  </div>
                  <!-- /.card-header -->
                  <div class="card-body pad">
                    <div class="form-group">
                      <label>Kategori</label>
                      <div class="col-md-5">
                        <select class="form-control select2" name="xkategori" style="width: 100%;" required>
                          <option value="">-Pilih-</option>
                          <?php
                        $no=0;
                        foreach ($kat->result_array() as $i) :
                        $no++;
                        $kategori_id=$i['kategori_id'];
                        $kategori_nama=$i['kategori_nama'];
                        ?>
                          <option value="<?php echo $kategori_id;?>"><?php echo $kategori_nama;?></option>
                          <?php endforeach;?>
                        </select>
                      </div>
                    </div>

                    <div class="form-group">
                      <label>Gambar</label>
                      <input type="file" name="filefoto" style="width: 100%;" required>
                    </div>
                    <div class="mb-3">
                      <textarea class="textarea" name="xisi" placeholder="Place some text here"
                        style="width: 100%; height: 400px; font-size: 14px; line-height: 18px; border: 1px solid #dddddd; padding: 10px;"></textarea>
                    </div>

                  </div>
                </div>

            </div>

          </div>
          <!-- /.row -->
      </section>

    </div>

    <!--Footer-->
    <?php $this->load->view('partials_admin/footer.php'); ?>

    <?php $this->load->view("partials_admin/js.php"); ?>
    <!-- page script -->
    <script>
      $(function () {
        $('#example2').DataTable({
          "paging": true,
          "lengthChange": false,
          "searching": true,
          "ordering": true,
          "info": true,
          "autoWidth": false,
          "responsive": true,
        });
        $('div.note-group-select-from-files').remove();           
      });
    </script>
</body>