    <nav class="navbar navbar-expand-lg bg-body sticky-top" aria-label="Eleventh navbar example">
      <div class="container">

        <a class="navbar-brand h1 mb-0" href="<?=site_url('welcome')?>">SEMA D3 Farmasi</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample09" aria-controls="navbarsExample09" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarsExample09">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link" aria-current="page" href="<?=site_url('welcome');?>">Home</a>
              </li>
              <li class="nav-item">
              <a class="nav-link" aria-current="page" href="<?=site_url('info/realcount');?>">Real Count</a>
              </li>
            </ul>
            <?php if($this->session->userdata('id')) { ?>
              <button type="button" class="btn btn-outline-danger btn-sm" data-bs-toggle="modal" data-bs-target="#exampleModal">
              Akhiri sesi pemilu
            </button>
            <?php } else { ?>
              <a type="button" class="btn btn-outline-info btn-sm" href=<?=site_url('auth') ?>>
                Mulai sesi pemilu
              </a>
            <?php } ?>
          <!-- <form role="search">
            <input class="form-control" type="search" placeholder="Search" aria-label="Search">
          </form> -->
        </div>
      </div>
    </nav>


<!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog modal-dialog-centered">
    <div class="modal-content">
      <div class="modal-header">
        <h1 class="modal-title fs-5" id="exampleModalLabel">Konfirmasi</h1>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        Anda akan keluar dari sesi pemilu.
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Batal</button>
        <a type="button" class="btn btn-danger" href="<?=site_url('auth/logout');?>">Keluar</a>
      </div>
    </div>
  </div>
</div>
