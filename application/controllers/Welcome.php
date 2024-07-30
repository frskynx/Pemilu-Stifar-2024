<?php
class Welcome extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('auth_model');
		$this->load->model('stifar_model');
		if(!$this->auth_model->current_user()){
			redirect('auth');
		}
		unset($_SESSION['username']);
	}

	public function index()
	{
		$this->load->view('layout/header');
		$this->load->view('layout/nav');
		$this->load->view('welcome');
		$this->load->view('layout/footer');
	}

	// public function create(){
	// 	$this->load->view('create');
	// }-

	// public function createAction(){
	// 	$pw = $this->input->post('password');
	// 	$username = $this->input->post('username');
	// 	$password = password_hash($pw, PASSWORD_DEFAULT);
	// 	$data = array(
	// 		'username' => $username,
	// 		'password' => $password
	// 	);
	// 	$this->stifar_model->create('admin', $data);
	// }

	public function suratsuara()
	{	
		$this->load->model('stifar_model');
		$data['calon'] = $this->stifar_model->readWhereMore('calon', 'jabatan', 'ketua')->result_array();
		// $data['calon'] = $this->stifar_model->readWhereMore('calon', 'id_calon', 1)->result_array();
		
		
		$i = 1;
		foreach($data['calon'] as $row){
			$data['visi'.$i] = $this->stifar_model->readWhereMore('visi', 'id_calon', $row['id_calon'])->result_array();
			$data['misi'.$i] = $this->stifar_model->readWhereMore('misi', 'id_calon', $row['id_calon'])->result_array();
			$i++;
		}
		
		$this->load->library('form_validation');

		//apakah input valid
		$nim = $this->input->post('nim');
		$config = array(
			array(
				'field' => 'nim',
				'label' => 'Nim',
				'rules' => 'numeric|exact_length[10]',
				'errors' => array(
					'numeric' => 'ouch! apakah anda benar menuliskan NIM?',
					'exact_length' => 'duh! format NIM anda salah :(',
				),
			)
		);
		
		$this->form_validation->set_rules($config);

		if ($this->form_validation->run() == FALSE) {
			$this->session->set_flashdata('message_error', validation_errors());
			redirect('welcome');
		}

		//apakah sudah memilih
		$cek = $this->stifar_model->readWhereMore('suara', 'nim', $nim)->num_rows();
		if ($cek > 0) {
			$this->session->set_flashdata('message_error', 'upss maaf! anda tercatat telah memilih :(');
			redirect('welcome');
		}

		//Cek apakah NIM sudah ada dalam tabel 'mahasiswa'
		if (!$this->check_nim_exists($nim)) {
			$this->session->set_flashdata('message_error', 'upss maaf! NIM tidak terdaftar sebagai pemilih :(');
			redirect('welcome');
		}

		$data_session = array(
			'nim' => $nim,
		);
		$this->session->set_userdata($data_session);
	
		$this->load->view('layout/header');
		$this->load->view('layout/nav');
		$this->load->view('display_calon',	 $data);
		$this->load->view('layout/footer');
	}

	public function suratSuaraWakil()
	{
		$nim = $this->input->post('nim');
		if( $nim == NULL) {
			redirect('welcome');
		}

		$this->load->model('stifar_model');
		$data['calon'] = $this->stifar_model->readWhereMore('calon', 'jabatan', 'wakil')->result_array();

		$i = 1;
		foreach($data['calon'] as $row){
			$data['visi'.$i] = $this->stifar_model->readWhereMore('visi', 'id_calon', $row['id_calon'])->result_array();
			$data['misi'.$i] = $this->stifar_model->readWhereMore('misi', 'id_calon', $row['id_calon'])->result_array();
			$i++;
		}
		
		$id_calon = $this->input->post('id_calon');
		$id_admin = $this->input->post('id_admin');

		$data_session = array(
			'id_admin' => $id_admin,
			'id_calon' => $id_calon,
		);
		$this->session->set_userdata($data_session);
		
		$this->load->view('layout/header');
		$this->load->view('layout/nav');
		$this->load->view('display_calon_wakil', $data);
		$this->load->view('layout/footer');
	}

	public function createSuara()
	{
		$nim = $this->input->post('nim');
		if( $nim == NULL) {
			redirect('welcome');
		}

		$id_calon = $this->input->post('id_calon');
		$id_calon_wakil = $this->input->post('id_calon_wakil');
		$id_admin = $this->input->post('id_admin');
		
		$dataKetua = array(
			'id_admin' => $id_admin,
			'id_calon' => $id_calon,
			'nim' => $nim,
			'jenis_suara' => "ketua",
			'waktu_pilih' => date("Y-m-d H:i:s")
		);
		$this->stifar_model->create('suara', $dataKetua);

		$dataWakil = array(
			'id_admin' => $id_admin,
			'id_calon' => $id_calon_wakil,
			'nim' => $nim,
			'jenis_suara' => 'wakil',
			'waktu_pilih' => date("Y-m-d H:i:s")
		);
		$this->stifar_model->create('suara', $dataWakil);

		$array_val = array('nim' => '');
		$this->session->unset_userdata($array_val);
		// $this->session->set_flashdata('show', 'show');
		// redirect('welcome');
		redirect('welcome/thanks');
	}

	public function thanks(){
		$this->load->view('layout/header');
		$this->load->view('layout/nav');
		$this->load->view('terimakasih');
		$this->load->view('layout/footer');
	}

	public function check_nim_exists($nim)
	{
		// Mengecek apakah NIM ada dalam tabel 'mahasiswa'
		$cek = $this->stifar_model->readWhereMore('mahasiswa', 'nim', $nim)->num_rows();

		return ($cek > 0);
	}

	public function realcount(){
		$this->load->model('stifar_model');
		$data['calon_ketua'] = $this->stifar_model->readWhereMore('calon', 'jabatan', 'ketua')->result_array();
		$data['calon_wakil'] = $this->stifar_model->readWhereMore('calon', 'jabatan', 'wakil')->result_array();
		$data['mahasiswa'] = $this->stifar_model->read('mahasiswa')->result_array();
		$data['total_suara_ketua'] = $this->stifar_model->readWhereMore('suara', 'jenis_suara', 'ketua')->num_rows();
		$data['total_suara_wakil'] = $this->stifar_model->readWhereMore('suara', 'jenis_suara', 'wakil')->num_rows();
		$data['total_mahasiswa'] = $this->stifar_model->read('mahasiswa')->num_rows();

		$i = 1;
		foreach($data['calon_ketua'] as $row){
			$data["persentase_suara".$i] = $this->stifar_model->readWhereMore('suara', 'id_calon', $row['id_calon'])->num_rows();
			// if (${"suara".$i} = 0){
			// 	$data['persentase_suara'.$i] = 0;
			// } else {
			// 	$temp = ${"suara".$i} / $data['total_suara'] * 100;
			// 	$data['persentase_suara'.$i] = round($temp);
			// }
			$i++;
		}

		foreach($data['calon_wakil'] as $row){
			$data["persentase_suara".$i] = $this->stifar_model->readWhereMore('suara', 'id_calon', $row['id_calon'])->num_rows();
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
		$this->load->view('dashboard', $data);
		$this->load->view('layout/footer');
	}
}