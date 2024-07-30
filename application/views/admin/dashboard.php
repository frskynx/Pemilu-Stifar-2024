<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>

<div class="container mb-5">
    <h4 class="text-center my-5">Input Mahasiswa</h4>
    <div class="col-lg-3 m-auto mb-5">
        <form action="<?=site_url('admin/dashboard/createmahasiswa')?>" method="POST">
            <div class="input-group flex-nowrap mb-3">
                <span class="input-group-text col-3" id="labelnama">Nama</span>
                <input type="text" name="nama" class="form-control" aria-label="nama" aria-describedby="labelnama" required>
            </div>
            <div class="input-group flex-nowrap mb-3">
                <span class="input-group-text col-3" id="labelnim">NIM</span>
                <input type="text" name="nim" class="form-control <?php if($this->session->flashdata('message_error')){echo "is-invalid";}?>" aria-describedby="validationServerUsernameFeedback labelnim" aria-label="nim" required>
            </div>
            
            <div class="text-danger mb-3 text-center">
                <?=$this->session->flashdata('message_error') ?>
            </div>
            
            

            <button class="btn btn-sm btn-success col-12" type="submit">Tambah +</button>
        </form>
    </div>

    <hr>

    <div class="col-md-6 m-auto">
    <h4 class="text-center my-5">Daftar Mahasiswa Pemilih</h4>
        <table class="table table-striped" >
            <thead>
                <tr>
                <th scope="col">#</th>
                <th scope="col">NIM</th>
                <th scope="col">Nama</th>
                <th scope="col">Status</th>
                <th scope="col" class="text-center">Alat</th>
                </tr>
            </thead>
            <tbody>
                <?php $i = 1; foreach ($mahasiswa as $row) {?>
                <tr>
                <td><?=$i?>.</td>
                <td><?=$row['nim']?></td>
                <td><?=$row['nama_mahasiswa']?></td>
                <td class="">
                    <?php if (${'status_mahasiswa'.$i} == 'success'){ ?>
                        <form action="<?=site_url('admin/dashboard/deletesuara')?>" method="POST">
                            <input name="nim" type="text" value="<?=$row['nim']?>" hidden>
                            <button class="btn btn-success btn-sm" type="submit" data-bs-toggle="tooltip" data-bs-placement="right" title="Tekan untuk mengubah status">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="success" class="bi bi-check-square-fill" viewBox="0 0 16 16">
                                <path d="M2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2zm10.03 4.97a.75.75 0 0 1 .011 1.05l-3.992 4.99a.75.75 0 0 1-1.08.02L4.324 8.384a.75.75 0 1 1 1.06-1.06l2.094 2.093 3.473-4.425a.75.75 0 0 1 1.08-.022z"/>
                                </svg>
                            </button>
                        </form>
                        
                    <?php } else { ?>
                        <div class="btn btn-outline-danger btn-sm">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="warning" class="bi bi-x-square" viewBox="0 0 16 16">
                            <path d="M14 1a1 1 0 0 1 1 1v12a1 1 0 0 1-1 1H2a1 1 0 0 1-1-1V2a1 1 0 0 1 1-1zM2 0a2 2 0 0 0-2 2v12a2 2 0 0 0 2 2h12a2 2 0 0 0 2-2V2a2 2 0 0 0-2-2z"/>
                            <path d="M4.646 4.646a.5.5 0 0 1 .708 0L8 7.293l2.646-2.647a.5.5 0 0 1 .708.708L8.707 8l2.647 2.646a.5.5 0 0 1-.708.708L8 8.707l-2.646 2.647a.5.5 0 0 1-.708-.708L7.293 8 4.646 5.354a.5.5 0 0 1 0-.708"/>
                            </svg>
                        </div>
                    <?php } ?>
                </td>
                <td class="d-flex flex-row-reverse text-center">
                    <form action="<?=site_url('admin/dashboard/delletemahasiswa')?>" method="POST">
                        <input type="text" name="nim" value="<?=$row['nim']?>" hidden>
                        <button class="btn btn-danger btn-sm mx-1" type="submit">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-trash-fill" viewBox="0 0 16 16">
                                <path d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5M8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5m3 .5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 1 0"/>
                            </svg>
                        </button>
                    </form>
                    <a href="<?=site_url('admin/dashboard/edit/'.$row['nim'])?>" class="btn btn-warning btn-sm mx-1">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-pencil-fill" viewBox="0 0 16 16">
                                <path d="M12.854.146a.5.5 0 0 0-.707 0L10.5 1.793 14.207 5.5l1.647-1.646a.5.5 0 0 0 0-.708zm.646 6.061L9.793 2.5 3.293 9H3.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.5h.5a.5.5 0 0 1 .5.5v.207zm-7.468 7.468A.5.5 0 0 1 6 13.5V13h-.5a.5.5 0 0 1-.5-.5V12h-.5a.5.5 0 0 1-.5-.5V11h-.5a.5.5 0 0 1-.5-.5V10h-.5a.5.5 0 0 1-.175-.032l-.179.178a.5.5 0 0 0-.11.168l-2 5a.5.5 0 0 0 .65.65l5-2a.5.5 0 0 0 .168-.11z"/>
                            </svg>
                    </a>
                </td>
                </tr>
                <?php $i++ ;} ?>
            </tbody>
            </table>
    </div>
</div>


<div class="alert alert-<?=$this->session->flashdata('color')?> alert-dismissible fade <?=$this->session->flashdata('show')?> position-fixed bottom-0 " role="alert" id="myAlert">
    <?=$this->session->flashdata('massage')?>
  <button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button>
</div>

<script>
  setTimeout(function() {
    var alertElement = document.getElementById('myAlert');

    if (alertElement.classList.contains('show')) {
      // Menambah class "fade-out" untuk animasi fade
      alertElement.classList.add('fade-out');
      
      // Menunggu animasi selesai sebelum menghapus class "show"
      setTimeout(function() {
        alertElement.classList.remove('show', 'fade-out');
      }, 1000); // Sesuaikan dengan durasi animasi (1s pada contoh ini)
    }
  }, 7000);
</script>






