<!DOCTYPE html>
<html>
<head>
    <?php
    $this->load->view('/partials_depan/head.php');
    ?>
</head>

<body class="stretched">
<div id="wrapper" class="clearfix">
<section id="content">
<div class="content-wrap nopadding">
<div class="section nopadding nomargin" style="width: 100%; height: 100%; position: absolute; left: 0; top: 0; background: url('images/parallax/home/1.jpg') center center no-repeat; background-size: cover;"></div>
<div class="section nobg full-screen nopadding nomargin">
<div class="container-fluid vertical-middle divcenter clearfix">
<div class="center">
    <img src="<?php echo base_url().'theme/images/Logo Sakti.png'?>" width="120px" height="120px" alt="">
</div>
<div class="card divcenter noradius noborder" style="max-width: 400px; background-color: rgba(255,255,255,0.93);">
  <div class="card-body" style="padding: 40px;">

    <form id="login-form" name="login-form" class="nobottommargin" action="
      <?php echo site_url().'admin/login/auth'?>" method="post">
      <h3>Login Admin Web UKM</h3>
      <div class="col_full">
          <label for="login-form-username">Username:</label>
          <input type="text" name="username" class="form-control" placeholder="Username" required>
              <span class="glyphicon glyphicon-user form-control-feedback"></span>
      </div>
      <div class="col_full">
          <label for="login-form-password">Password:</label>
          <input type="password" name="password" class="form-control" placeholder="Password" required>
          <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
      <div class="col_full nobottommargin">
        <button type="submit" class="button button-3d button-black nomargin" id="login-form-submit" name="login-form-submit" value="login" >Login</button>
      </div>
    </form>

  </div>
</div>

<div class="center dark">
    <p><small>Copyright <?php echo date('Y');?> UKM SAKTI Palangka Raya <br/> All Right Reserved</small></p></div>
</div>
</div>
</div>
</section>
</div>
<div id="gotoTop" class="icon-angle-up"></div>
<!--============================= file JS =============================-->
<?php $this->load->view('/partials_depan/js.php') ?>
<!--============================= file JS =============================-->
</body>
</html>