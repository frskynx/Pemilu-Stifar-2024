<div class="container mb-5">
    <?php foreach($mahasiswa as $row) { ?>
    <h4 class="text-center my-5">Edit Data <?=$row['nama_mahasiswa']?></h4>
    <div class="col-lg-3 m-auto mb-5">

        <form action="<?=site_url('admin/dashboard/updatemahasiswa')?>" method="POST">
            <div class="input-group flex-nowrap mb-3">
                <span class="input-group-text col-3" id="labelnama">Nama</span>
                <input type="text" name="nama" class="form-control" aria-label="nama" aria-describedby="labelnama" value="<?=$row['nama_mahasiswa']?>" required>
            </div>
            <div class="input-group flex-nowrap mb-3">
                <span class="input-group-text col-3" id="labelnim">NIM</span>
                <input type="text" class="form-control <?php if($this->session->flashdata('message_error')){echo "is-invalid";}?>" aria-describedby="validationServerUsernameFeedback labelnim" aria-label="nim" value="<?=$row['nim']?>" disabled>
                <input type="text" name="nim" value="<?=$row['nim']?>" hidden>
            </div>
            
            <div class="text-danger mb-3 text-center">
                <?=$this->session->flashdata('message_error') ?>
            </div>
            
            

            <button class="btn btn-sm btn-primary col-12" type="submit">Simpan Perubahan</button>
        </form>
    <?php } ?>
    </div>
</div>