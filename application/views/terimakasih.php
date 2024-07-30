<svg xmlns="http://www.w3.org/2000/svg" class="d-none">
  <symbol id="bootstrap" viewBox="0 0 118 94">
    <title>Bootstrap</title>
    <path fill-rule="evenodd" clip-rule="evenodd" d="M24.509 0c-6.733 0-11.715 5.893-11.492 12.284.214 6.14-.064 14.092-2.066 20.577C8.943 39.365 5.547 43.485 0 44.014v5.972c5.547.529 8.943 4.649 10.951 11.153 2.002 6.485 2.28 14.437 2.066 20.577C12.794 88.106 17.776 94 24.51 94H93.5c6.733 0 11.714-5.893 11.491-12.284-.214-6.14.064-14.092 2.066-20.577 2.009-6.504 5.396-10.624 10.943-11.153v-5.972c-5.547-.529-8.934-4.649-10.943-11.153-2.002-6.484-2.28-14.437-2.066-20.577C105.214 5.894 100.233 0 93.5 0H24.508zM80 57.863C80 66.663 73.436 72 62.543 72H44a2 2 0 01-2-2V24a2 2 0 012-2h18.437c9.083 0 15.044 4.92 15.044 12.474 0 5.302-4.01 10.049-9.119 10.88v.277C75.317 46.394 80 51.21 80 57.863zM60.521 28.34H49.948v14.934h8.905c6.884 0 10.68-2.772 10.68-7.727 0-4.643-3.264-7.207-9.012-7.207zM49.948 49.2v16.458H60.91c7.167 0 10.964-2.876 10.964-8.281 0-5.406-3.903-8.178-11.425-8.178H49.948z"></path>
  </symbol>
  <symbol id="arrow-right-short" viewBox="0 0 16 16">
    <path fill-rule="evenodd" d="M4 8a.5.5 0 0 1 .5-.5h5.793L8.146 5.354a.5.5 0 1 1 .708-.708l3 3a.5.5 0 0 1 0 .708l-3 3a.5.5 0 0 1-.708-.708L10.293 8.5H4.5A.5.5 0 0 1 4 8z"></path>
  </symbol>
  <symbol id="check2-circle" viewBox="0 0 16 16">
    <path d="M2.5 8a5.5 5.5 0 0 1 8.25-4.764.5.5 0 0 0 .5-.866A6.5 6.5 0 1 0 14.5 8a.5.5 0 0 0-1 0 5.5 5.5 0 1 1-11 0z"></path>
    <path d="M15.354 3.354a.5.5 0 0 0-.708-.708L8 9.293 5.354 6.646a.5.5 0 1 0-.708.708l3 3a.5.5 0 0 0 .708 0l7-7z"></path>
  </symbol>
</svg>

<div class="container position-relative">
  <div class="my-5 p-5 text-center">
    <h1 class="mt-5 pt-5 text-body-emphasis">Pilihanmu Berhasil Disimpan ;)</h1>
    <p class="col-lg-8 mx-auto my-3">
        Terimakasih telah menggunakan hak suara anda, silahkan tekan tombol "Selanjutnya" untuk mulai memilih kembali dan anda sudah dapat meninggalkan bilik suara.
    </p>

      <a class="d-inline-flex align-items-center btn btn-info btn-lg px-4 rounded-pill" href="<?=base_url('welcome')?>">
        Selanjutnya
        <svg class="bi ms-2" width="24" height="24"><use xlink:href="#arrow-right-short"></use></svg>
      </a>

  </div>
</div>
<div class="alert alert-success alert-dismissible fade <?= $this->session->flashdata('show') ?> position-fixed bottom-0 " role="alert" id="myAlert">
  <strong>Pilihanmu Berhasil Disimpan!</strong> Kamu sudah bisa meninggalkan bilik suara, terima kasih ;)
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
  }, 6000);
</script>

