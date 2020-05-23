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
                  <a href="<?php echo base_url().'admin/artikel/add_artikel'?>" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Post Artikel</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="<?php echo base_url().'admin/kategori'?>" class="nav-link active">
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
              <h1 class="m-0 text-dark">Kategori Artikel</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active">Kategori Artikel</li>
              </ol>
            </div><!-- /.col -->
          </div><!-- /.row -->
        </div><!-- /.container-fluid -->
      </div>
      <!-- /.content-header -->

      <!-- Main content -->
      <section class="content">
        <div class="row">
          <div class="col-12">
            <div class="card">
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example2" class="table table-bordered table-hover">
                  <thead>
                    <div class="box-header">
                      <a class="btn btn-success btn-flat" href="<?php echo base_url().'admin/artikel/add_artikel'?>"
                        data-toggle="modal" data-target="#myModal"><span class="fa fa-plus"></span> Add
                        Artikel</a>
                    </div>
                    <tr>
                      <th style="width:100px;">#</th>
                      <th>Kategori</th>
                      <th style="text-align:right;">Aksi</th>
                    </tr>
                  </thead>
                  <tbody>
                    <?php
                    $no=0;
                    foreach ($data->result_array() as $i) :
                    $no++;
                    $kategori_id=$i['kategori_id'];
                    $kategori_nama=$i['kategori_nama'];

                    ?>
                    <tr>
                      <td><?php echo $no;?></td>
                      <td><?php echo $kategori_nama;?></td>

                      <td style="text-align:right;">
                        <a class="btn" data-toggle="modal" data-target="#ModalEdit<?php echo $kategori_id;?>"><span
                            class="fa fa-pencil-alt"></span></a>
                        <a class="btn" data-toggle="modal" data-target="#ModalHapus<?php echo $kategori_id;?>"><span
                            class="fa fa-trash"></span></a>
                      </td>
                    </tr>
                    <?php endforeach;?>
                  </tbody>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
          </di>
          <!-- /.row -->
      </section>
    </div>

    <!--Modal Add Pengguna-->
    <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><span
                  class="fa fa-close"></span></span></button>
            <h4 class="modal-title" id="myModalLabel">Add Kategori</h4>
          </div>
          <form class="form-horizontal" action="<?php echo base_url().'admin/kategori/simpan_kategori'?>" method="post"
            enctype="multipart/form-data">
            <div class="modal-body">

              <div class="form-group">
                <label for="inputUserName" class="col-sm-4 control-label">Kategori</label>
                <div class="col-sm-7">
                  <input type="text" name="xkategori" class="form-control" id="inputUserName" placeholder="Kategori"
                    required>
                </div>
              </div>

            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default btn-flat" data-dismiss="modal">Close</button>
              <button type="submit" class="btn btn-primary btn-flat" id="simpan">Simpan</button>
            </div>
          </form>
        </div>
      </div>
    </div>


    <?php foreach ($data->result_array() as $i) :
              $kategori_id=$i['kategori_id'];
              $kategori_nama=$i['kategori_nama'];
            ?>
    <!--Modal Edit Pengguna-->
    <div class="modal fade" id="ModalEdit<?php echo $kategori_id;?>" tabindex="-1" role="dialog"
      aria-labelledby="myModalLabel">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><span
                  class="fa fa-close"></span></span></button>
            <h4 class="modal-title" id="myModalLabel">Edit Kategori</h4>
          </div>
          <form class="form-horizontal" action="<?php echo base_url().'admin/kategori/update_kategori'?>" method="post"
            enctype="multipart/form-data">
            <div class="modal-body">

              <div class="form-group">
                <label for="inputUserName" class="col-sm-4 control-label">Kategori</label>
                <div class="col-sm-7">
                  <input type="hidden" name="kode" value="<?php echo $kategori_id;?>" />
                  <input type="text" name="xkategori" class="form-control" id="inputUserName"
                    value="<?php echo $kategori_nama;?>" placeholder="Kategori" required>
                </div>
              </div>

            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default btn-flat" data-dismiss="modal">Close</button>
              <button type="submit" class="btn btn-primary btn-flat" id="simpan">Update</button>
            </div>
          </form>
        </div>
      </div>
    </div>
    <?php endforeach;?>

    <?php foreach ($data->result_array() as $i) :
              $kategori_id=$i['kategori_id'];
              $kategori_nama=$i['kategori_nama'];
            ?>
    <!--Modal Hapus Pengguna-->
    <div class="modal fade" id="ModalHapus<?php echo $kategori_id;?>" tabindex="-1" role="dialog"
      aria-labelledby="myModalLabel">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><span
                  class="fa fa-close"></span></span></button>
            <h4 class="modal-title" id="myModalLabel">Hapus Kategori</h4>
          </div>
          <form class="form-horizontal" action="<?php echo base_url().'admin/kategori/hapus_kategori'?>" method="post"
            enctype="multipart/form-data">
            <div class="modal-body">
              <input type="hidden" name="kode" value="<?php echo $kategori_id;?>" />
              <p>Apakah anda yakin ingin menghapus <b><?php echo $kategori_nama;?></b> ?</p>

            </div>
            <div class="modal-footer">
              <button type="button" class="btn btn-default btn-flat" data-dismiss="modal">Close</button>
              <button type="submit" class="btn btn-primary btn-flat" id="simpan">Hapus</button>
            </div>
          </form>
        </div>
      </div>
    </div>
    <?php endforeach;?>

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
      });
    </script>
</body>