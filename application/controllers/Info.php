

<?php

class Info extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('stifar_model');
	}

	public function realcount(){
		$this->session->unset_userdata('username');
		$data['calon_ketua'] = $this->stifar_model->readWhereMore('calon', 'jabatan', 'ketua')->result_array();
		$data['calon_wakil'] = $this->stifar_model->readWhereMore('calon', 'jabatan', 'wakil')->result_array();
		$data['mahasiswa'] = $this->stifar_model->read('mahasiswa')->result_array();
		$data['total_suara_ketua'] = $this->stifar_model->readWhereMore('suara', 'jenis_suara', 'ketua')->num_rows();
		$data['total_suara_wakil'] = $this->stifar_model->readWhereMore('suara', 'jenis_suara', 'wakil')->num_rows();
		$data['total_mahasiswa'] = $this->stifar_model->read('mahasiswa')->num_rows();

		$i = 1;
		foreach($data['calon_ketua'] as $row){
			$data["persentase_suara_ketua".$i] = $this->stifar_model->readWhereMore('suara', 'id_calon', $row['id_calon'])->num_rows();
			// if (${"suara".$i} = 0){
			// 	$data['persentase_suara'.$i] = 0;
			// } else {
			// 	$temp = ${"suara".$i} / $data['total_suara'] * 100;
			// 	$data['persentase_suara'.$i] = round($temp);
			// }
			$i++;
		}

		$i = 1;
		foreach($data['calon_wakil'] as $row){
			$data["persentase_suara_wakil".$i] = $this->stifar_model->readWhereMore('suara', 'id_calon', $row['id_calon'])->num_rows();
			$i++;
		}		


		$i = 1;
		foreach($data['mahasiswa'] as $row){
			$temp = $this->stifar_model->readWhereMore('suara', 'nim', $row['nim'])->num_rows();
			if($temp > 0){
				$data["status_mahasiswa".$i] = 'success';
			} else {
				$data["status_mahasiswa".$i] = 'outline-danger';
			}
			$i++;
		}
		$this->load->view('layout/header');
		$this->load->view('layout/nav');
		$this->load->view('realcount', $data);
		$this->load->view('layout/footer');
	}
}