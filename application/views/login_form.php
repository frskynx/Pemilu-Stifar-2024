    <style>

    </style>

<main class="form-signin col-sm-3 m-auto text-center p-4">
  <form action="<?=site_url('auth/login');?>" method="POST">
    <img class="mb-4" src="<?=base_url('assets/img/LOGO_STIFAR.png'); ?>" alt="" width="100" height="100">
    <h5 class="">Pemilu SEMA D3 Farmasi</h5>
    <p class="mb-3 fw-normal">Login untuk memulai sesi pemilu</p>

    <?php if($this->session->flashdata('message_login_error')): ?>
			<div class="alert alert-danger align-items-center" role="alert">
        <div>
          <?= $this->session->flashdata('message_login_error') ?>
        </div>
      </div>
		<?php endif ?>


    <div class="form-floating">
      <input name="username" type="text" class="form-control" value="" required>
      <label for="floatingInput">Username</label>
    </div>
    <div class="form-floating">
      <input name="password" type="password" class="form-control" value="" required>
      <label for="floatingPassword">Password</label>
    </div>
    <?=$this->session->flashdata('msg-wrong'); ?>

    <div class="form-check text-start my-3">
      <input class="form-check-input" type="checkbox" value="remember-me" id="flexCheckDefault">
      <label class="form-check-label" for="flexCheckDefault">
        Remember me
      </label>
    </div>
    <button class="btn btn-info w-100 py-2" type="submit">Login</button>
    <p class="mt-5 mb-3 text-body-secondary">&copy; SEMA D3 Farmasi 2024</p>
  </form>
</main>
<script src="../assets/dist/js/bootstrap.bundle.min.js"></script>

