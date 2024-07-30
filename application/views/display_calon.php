<!-- SECTION CALON START -->
<div class="container">
  <div class="my-5 text-center">
      <h3 class="mb-0">Halaman Surat Suara Ketua</h3>
      <p>Gunakan hak suara anda secara bijak. Scroll ke halaman paling bawah untuk memilih dengan menekan tombol "Pilih" ;)</p>
  </div>
  <div class="row row-cols-1 row-cols-md-3">


      <?php $i = 0; foreach ($calon as $row) { ?>
        <div class="col my-3">
          <div class="card h-100">
          <img src="<?=base_url($row['foto'])?>" class="card-img-top" alt="..." style="max-height:100;">
          <div class="card-header">
            <h5 class="card-title mt-2"><?=$i+1;echo '. '.$row['nama_calon'];?></h5>
          </div>
            <div class="card-body">
              <p class="card-text">
                  <strong>Visi : </strong> 
                  <?php $i++; foreach (${'visi'.$i} as $col) { ?>
                    <?=$col['visi']?> <br>
                  <?php  } ?> <br>
                  <strong>Misi : </strong> <br>
                  <?php $j = 1; foreach (${'misi'.$i} as $col) { ?>
                    <?=$j.'. '.$col['misi']; $j++?> <br>
                  <?php } ?>
              </p>
            </div>
            <div class="card-footer">
              <button class="btn btn-info col-12" data-bs-toggle="modal" data-bs-target="#exampleModal<?=$i?>">Pilih</button>
            </div>
          </div>
        </div>
        
        <div class="modal fade" id="exampleModal<?=$i?>" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
          <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
              <div class="modal-header">
                <h1 class="modal-title fs-5" id="exampleModalLabel">Konfirmasi Pilihan</h1>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
              </div>
              <div class="modal-body text-center">
                <p>Silahkan tekan tombol <strong class="text-info">Lanjutkan</strong> jika <b>0<?=$row['id_calon']?></b> adalah pilihan yang benar. Tekan tombol <strong class="text-secondary">Batal</strong> untuk menutup jendela ini.</p>
                  <form action="<?=site_url('welcome/suratSuaraWakil');?>" class="text-center" method="post">
                    <input name="nim" value="<?=$this->session->userdata('nim')?>" hidden>
                    <input name="id_admin" value="<?=$this->session->userdata('id')?>" hidden>
                    <input name="id_calon" value="<?=$row['id_calon']; ?>" hidden>
                    <div class="modal-footer m-auto">
                      <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Batal</button>
                      <button type="submit" class="btn btn-info">Lanjutkan</button>
                    </div>
                  </form>
              </div>
            </div>
          </div>
        </div>
    <?php ; } ?>

  </div>
</div>

<!-- SECTION CALON END -->