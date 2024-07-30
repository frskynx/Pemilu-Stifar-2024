<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.9.4/Chart.js"></script>

<div class="container my-5">
    <div class="text-center">
        <h4>Hasil suara pemilu SEMA D3 Farmasi</h4>
    </div>

    <div class="col-md-6 m-auto my-5">

        <div class="bd-example m-0 border-0">
            <nav>
            <div class="nav nav-tabs mb-3 justify-content-center" id="nav-tab" role="tablist">
                <button class="nav-link active px-5" id="nav-home-tab" data-bs-toggle="tab" data-bs-target="#nav-home" type="button" role="tab" aria-controls="nav-home" aria-selected="true">Suara Ketua</button>
                <button class="nav-link px-5" id="nav-profile-tab" data-bs-toggle="tab" data-bs-target="#nav-profile" type="button" role="tab" aria-controls="nav-profile" aria-selected="false" tabindex="-1">Suara Wakil</button>
            </div>
            </nav>
            <div class="tab-content" id="nav-tabContent">
            <div class="tab-pane fade active show" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                <canvas id="myChart" style="width:100%;max-width:700px" class="m-auto my-5"></canvas>
            </div>
            <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                <canvas id="myChart2" style="width:100%;max-width:700px" class="m-auto my-5"></canvas>
            </div>
        </div>

        <div class="alert alert-dark col-md-12 text-center m-auto" role="alert">
             <?='Perhitungan <strong>'.$total_suara_wakil.'</strong> suara ketua dari <strong>'.$total_mahasiswa.'</strong> total pemilih'?>
        </div>

        <h4 class="text-center my-3">Daftar Mahasiswa Pemilih</h4>
        <table class="table table-striped">
            <thead>
                <tr>
                <th scope="col">#</th>
                <th scope="col">NIM</th>
                <th scope="col">Nama</th>
                <th scope="col">Satus</th>
                </tr>
            </thead>
            <tbody>
                <?php $i = 1; foreach ($mahasiswa as $row) {?>
                <tr>
                <th scope="row"><?=$i?></th>
                <td><?=$row['nim']?></td>
                <td><?=$row['nama_mahasiswa']?></td>
                <td><div class="btn col-12 btn-sm btn-<?=${'status_mahasiswa'.$i}?>" >
                    <?php if (${'status_mahasiswa'.$i} == 'success'){
                        echo 'Telah Memilih';
                    } else {
                        echo 'Belum memilih';
                    }?>
                </div></td>
                </tr>
                <?php $i++ ;} ?>
            </tbody>
        </table>
    </div>
</div>



<script>
const xValues = [
<?php $i = 1; foreach($calon_ketua as $row) {
        echo '"0'.$i.' '.$row['nama_calon'].'",';
    $i++; } ?>
];
const yValues = [
    <?php $i = 1; foreach($calon_ketua as $row) {
        echo ${'persentase_suara_ketua'.$i}.',';
    $i++; } ?> 
];
const barColors = [
  "#0d6efd",
  "#ffc107",
  "#dc3545",
  "#6c757d"
];

new Chart("myChart", {
  type: "pie",
  data: {
    fontColor: '#fff',
    fontSize: 18,
    labels: xValues,
    datasets: [{
      backgroundColor: barColors,
      data: yValues
    }]
  }
});

const xValues2 = [
<?php $i = 1; foreach($calon_wakil as $row) {
        echo '"0'.$i.' '.$row['nama_calon'].'",';
    $i++; } ?>
];
const yValues2 = [
    <?php $i = 1; foreach($calon_wakil as $row) {
        echo ${'persentase_suara_wakil'.$i}.',';
    $i++; } ?> 
];
const barColors2 = [
  "#0d6efd",
  "#ffc107",
  "#dc3545",
  "#6c757d"
];

new Chart("myChart2", {
  type: "pie",
  data: {
    fontColor: '#fff',
    fontSize: 18,
    labels: xValues2,
    datasets: [{
      backgroundColor: barColors2,
      data: yValues2
    }]
  }
});
</script>





