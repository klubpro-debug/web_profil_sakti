<!DOCTYPE html>
<html>

<head>
  <?php $this->load->view("partials_admin/head.php") ?>
  <?php
        /* Mengambil query report*/
        foreach($visitor as $result){
            $bulan[] = $result->tgl; //ambil bulan
            $value[] = (float) $result->jumlah; //ambil nilai
        }
        /* end mengambil query*/

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
                  <a href="<?php echo base_url().'admin/artikel/add_artikel'?>" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Post Artikel</p>
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
                  <a href="<?php echo base_url().'admin/banner/add_banner'?>" class="nav-link active">
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
              <h1 class="m-0 text-dark">Dashboard</h1>
            </div><!-- /.col -->
            <div class="col-sm-6">
              <ol class="breadcrumb float-sm-right">
                <li class="breadcrumb-item"><a href="#">Home</a></li>
                <li class="breadcrumb-item active">Dashboard</li>
              </ol>
            </div><!-- /.col -->
          </div><!-- /.row -->
        </div><!-- /.container-fluid -->
      </div>
      <!-- /.content-header -->

      <section class="content">
        <div class="container-fluid">
          <!-- Small boxes (Stat box) -->
          <div class="row">
            <div class="col-lg-3 col-6">
              <!-- small box -->
              <div class="small-box bg-info">
                <?php
                  $query=$this->db->query("SELECT * FROM pengunjung WHERE pengunjung_perangkat='Chrome'");
                  $jml=$query->num_rows();
              ?>
                <div class="inner">
                  <h3><?php echo $jml;?></h3>

                  <p>Chrome</p>
                </div>
                <div class="icon">
                  <i class="ion ion-social-chrome"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
              </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-6">
              <!-- small box -->
              <div class="small-box bg-danger">
                <?php
                  $query=$this->db->query("SELECT * FROM pengunjung WHERE pengunjung_perangkat='Firefox' OR pengunjung_perangkat='Mozilla'");
                  $jml=$query->num_rows();
              ?>
                <div class="inner">
                  <h3><?php echo $jml;?></h3>

                  <p>Firefox</p>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
              </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-6">
              <!-- small box -->
              <div class="small-box bg-success">
                <?php
                    $query=$this->db->query("SELECT * FROM pengunjung WHERE pengunjung_perangkat='Googlebot'");
                    $jml=$query->num_rows();
              ?>
                <div class="inner">
                  <h3><?php echo $jml;?></h3>

                  <p>Googlebot</p>
                </div>
                <div class="icon">
                  <i class="ion ion-bug"></i>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
              </div>
            </div>
            <!-- ./col -->
            <div class="col-lg-3 col-6">
              <!-- small box -->
              <div class="small-box bg-warning">
                <?php
                    $query=$this->db->query("SELECT * FROM pengunjung WHERE pengunjung_perangkat='Opera'");
                    $jml=$query->num_rows();
              ?>
                <div class="inner">
                  <h3><?php echo $jml;?></h3>

                  <p>Opera</p>
                </div>
                <a href="#" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
              </div>
            </div>
            <!-- ./col -->
          </div>
          <!-- /.row -->
          <!-- /.row (main row) -->
          <!-- AREA CHART -->
          <div class="card card-primary">
            <div class="card-header">
              <h3 class="card-title">Pengunjung Bulan Ini</h3>
            </div>
            <div class="card-body">
              <div class="chart">
                <canvas id="areaChart"
                  style="min-height: 250px; height: 250px; max-height: 250px; max-width: 100%;"></canvas>
              </div>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
        <!-- /.container-fluid -->
      </section>

    </div>
    <!--Footer-->
    <?php $this->load->view('partials_admin/footer.php'); ?>

    <?php $this->load->view("partials_admin/js.php"); ?>
    <!-- page script -->
    <script>
      $(function () {
        /* ChartJS
         * -------
         * Here we will create a few charts using ChartJS
         */

        //--------------
        //- AREA CHART -
        //--------------

        // Get context with jQuery - using jQuery's .get() method.
        var areaChartCanvas = $('#areaChart').get(0).getContext('2d')

        var areaChartData = {
          labels: < ? php echo json_encode($bulan); ? > ,
          datasets : [{
            label: 'Digital Goods',
            backgroundColor: 'rgba(60,141,188,0.9)',
            borderColor: 'rgba(60,141,188,0.8)',
            pointRadius: false,
            pointColor: '#3b8bba',
            pointStrokeColor: 'rgba(60,141,188,1)',
            pointHighlightFill: '#fff',
            pointHighlightStroke: 'rgba(60,141,188,1)',
            data: < ? php echo json_encode($value); ? >
          }]
        }

        var areaChartOptions = {
          maintainAspectRatio: false,
          responsive: true,
          legend: {
            display: false
          },
          scales: {
            xAxes: [{
              gridLines: {
                display: true,
              }
            }],
            yAxes: [{
              gridLines: {
                display: true,
              }
            }]
          }
        }

        // This will get the first returned node in the jQuery collection.
        var areaChart = new Chart(areaChartCanvas, {
          type: 'line',
          data: areaChartData,
          options: areaChartOptions
        })

      })
    </script>
</body>