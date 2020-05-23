<!DOCTYPE html>
<html>

<head>
    <?php $this->load->view("partials_admin/head.php") ?>
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
                    <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu"
                        data-accordion="false">
                        <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->
                        <li class="nav-item has-treeview">
                            <a href="#" class="nav-link">
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
                                    <a href="<?php echo base_url().'admin/artikel/add_banner'?>" class="nav-link">
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
                        <li class="nav-item has-treeview menu-open">
                            <a href="#" class="nav-link active">
                                <i class="nav-icon fas fa-copy"></i>
                                <p>
                                    Banner
                                    <i class="right fas fa-angle-left"></i>
                                </p>
                            </a>
                            <ul class="nav nav-treeview">
                                <li class="nav-item">
                                    <a href="<?php echo base_url().'admin/banner'?>" class="nav-link active">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>List Banner</p>
                                    </a>
                                </li>
                                <li class="nav-item">
                                    <a href="<?php echo base_url().'admin/banner/add_banner'?>" class="nav-link">
                                        <i class="far fa-circle nav-icon"></i>
                                        <p>Tambah Banner</p>
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
                        </u>
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
                            <h1 class="m-0 text-dark">Banner</h1>
                        </div><!-- /.col -->
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="#">Home</a></li>
                                <li class="breadcrumb-item active">Banner</li>
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
                                            <a class="btn btn-success btn-flat"
                                                href="<?php echo base_url().'admin/banner/add_banner'?>"><span
                                                    class="fa fa-plus"></span> Tambah
                                                Banner</a>
                                        </div>
                                        <tr>
                                            <th>Gambar</th>
                                            <th>Nama</th>
                                            <th>Tanggal</th>
                                            <th>Author</th>
                                            <th style="text-align:right;">Aksi</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        <?php
                                        $no=0;
                                        foreach ($data->result_array() as $i) :
                                            $no++;
                                            $banner_id=$i['banner_id'];
                                            $banner_nama=$i['banner_nama'];
                                            $banner_tanggal=$i['banner_tanggal'];
                                            $banner_author=$i['banner_author'];
                                            $banner_cover=$i['banner_cover'];

                                        ?>
                                        <tr>
                                            <td><img src="<?php echo base_url().'assets/images/files/'.$banner_cover;?>"
                                                    style="width:80px;"></td>
                                            <td><?php echo $banner_nama;?></td>
                                            <td><?php echo $banner_tanggal;?></td>
                                            <td><?php echo $banner_author;?></td>
                                            <td style="text-align:right;">
                                                <a class="btn"
                                                    href="<?php echo base_url().'admin/banner/get_edit/'.$banner_id;?>"><span
                                                        class="fa fa-edit"></span></a>
                                                <a class="btn" data-toggle="modal"
                                                    data-target="#ModalHapus<?php echo $banner_id;?>"><span
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

    </div>

    <?php foreach ($data->result_array() as $i) :
        $banner_id=$i['banner_id'];
        $banner_nama=$i['banner_nama'];
        $banner_cover=$i['banner_cover'];
    ?>    
    <!--Modal Hapus Pengguna-->
    <div class="modal fade" id="ModalHapus<?php echo $banner_id;?>" tabindex="-1" role="dialog"
      aria-labelledby="myModalLabel">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true"><span
                  class="fa fa-close"></span></span></button>
            <h4 class="modal-title" id="myModalLabel">Hapus banner</h4>
          </div>
          <form class="form-horizontal" action="<?php echo base_url().'admin/banner/hapus_banner'?>" method="post"
            enctype="multipart/form-data">
            <div class="modal-body">
              <input type="hidden" name="kode" value="<?php echo $banner_id;?>" />
              <input type="hidden" value="<?php echo $banner_cover;?>" name="gambar">
              <p>Apakah anda yaking menghapus <b><?php echo $banner_nama;?></b> ?</p>

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