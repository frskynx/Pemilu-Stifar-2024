<?php

class Dashboard extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		$this->load->model('auth_model');
		$this->load->model('stifar_model');
	}

	public function index(){
		$this->load->model('auth_model');
		if($this->auth_model->current_admin()){
			redirect('admin/dashboard/home');
		}
			$this->load->view('layout/header');
			$this->load->view('layout/nav');
			$this->load->view('admin/login_admin');
			$this->load->view('layout/footer');
	}

	public function login()
	{	
		$this->load->model('auth_model');

		$username = $this->input->post('username');
		$password = $this->input->post('password');

		if($this->auth_model->loginpanel($username, $password)){
			redirect('admin/dashboard/home');
		} else {
			$this->session->set_flashdata('message_login_error', 'etsss tidak bisa, cek username sama password mu yah ;)');
		}
		$data = array(
			'username' => $username,
		);
		$this->session->set_userdata($data);
		redirect('admin/dashboard');
	}

	public function home(){
		if(!$this->session->userdata('username')){
			redirect('admin/dashboard');
		}

		$data['calon'] = $this->stifar_model->read('calon')->result_array();
		$data['mahasiswa'] = $this->stifar_model->read('mahasiswa')->result_array();
		$data['total_suara'] = $this->stifar_model->read('suara')->num_rows();
		$data['total_mahasiswa'] = $this->stifar_model->read('mahasiswa')->num_rows();

		$i = 1;
		foreach($data['calon'] as $row){
			$data["persentase_suara".$i] = $this->stifar_model->readWhereMore('suara', 'id_calon', $row['id_calon'])->num_rows();
			// if (${"suara".$i} = 0){
			// 	$data['persentase_suara'.$i] = 0;
			// } else {
			// 	$temp = ${"suara".$i} / $data['total_suara'] * 100;
			// 	$data['persentase_suara'.$i] = round($temp);
			// }
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
		$this->load->view('admin/dashboard', $data);
		$this->load->view('layout/footer');
	}

	public function createmahasiswa(){
		if(!$this->session->userdata('username')){
			redirect('admin/dashboard');
		}
		
		$this->load->library('form_validation');
		$nim = $this->input->post('nim');

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
			redirect('admin/dashboard/home');

		}

		//Cek apakah NIM sudah ada dalam tabel 'mahasiswa'
		$temp = $this->stifar_model->readWhereMore('mahasiswa', 'nim', $nim)->num_rows();
		if ($temp > 0) {
			$this->session->set_flashdata('message_error', 'NIM Telah terdaftar');
			redirect('admin/dashboard/home');

		}

		//create
		$nama = $this->input->post('nama');
		$data = array(
			'nim' => $nim,
			'nama_mahasiswa' => $nama,
		);
		$this->stifar_model->create('mahasiswa', $data);

		//redirect
		$this->session->set_flashdata('show', 'show');
		$this->session->set_flashdata('color', 'success');
		$this->session->set_flashdata('massage', $nama.' Berhasil Ditambahkan');
		redirect('admin/dashboard/home');
	}

	public function edit($nim){
		if(!$this->session->userdata('username')){
			redirect('admin/dashboard');
		}
		//load view
		$data['mahasiswa'] = $this->stifar_model->readWhereMore('mahasiswa', 'nim', $nim)->result_array();
		$this->load->view('layout/header');
		$this->load->view('layout/nav');
		$this->load->view('admin/updatemahasiswa', $data);
		$this->load->view('layout/footer');
	}

	public function updatemahasiswa(){
		if(!$this->session->userdata('username')){
			redirect('admin/dashboard');
		}

		//cek jika input duplicat
		$nim = $this->input->post('nim');
		$nama = $this->input->post('nama');
		$data = array(
			'nama_mahasiswa' => $nama,
		);
		// $cek = $this->stifar_model->readWhereMore('mahasiswa', 'nim', $nim)->num_rows();
		// if ($cek > 0){
		// 	$this->session->set_flashdata('show', 'show');
		// 	$this->session->set_flashdata('danger', 'danger');
		// 	$this->session->set_flashdata('massage', 'NIM Telah tedaftar');
		// 	$this->session->set_userdata($data); 
		// 	redirect('admin/dashboard/edit/'.$nim);
		// }

		//update data
		
		$this->stifar_model->updateWhare('mahasiswa', $data, 'nim', $nim);

		//redirect
		$this->session->set_flashdata('show', 'show');
		$this->session->set_flashdata('color', 'success');
		$this->session->set_flashdata('massage', 'Data '.$nim.' Berhasil Diperbaharui');
		redirect('admin/dashboard/home');
	}

	public function deletesuara(){
		if(!$this->session->userdata('username')){
			redirect('admin/dashboard');
		}

		$nim = $this->input->post('nim');
		$this->stifar_model->deleteWhere('suara', 'nim', $nim);
		//redirect
		$this->session->set_flashdata('show', 'show');
		$this->session->set_flashdata('color', 'success');
		$this->session->set_flashdata('massage', 'Suara '.$nim.' Berhasil Diubah');
		redirect('admin/dashboard/home');
	}

	public function delletemahasiswa(){
		if(!$this->session->userdata('username')){
			redirect('admin/dashboard');
		}

		$nim = $this->input->post('nim');
		$this->stifar_model->deleteWhere('mahasiswa', 'nim', $nim);
		//redirect
		$this->session->set_flashdata('show', 'show');
		$this->session->set_flashdata('color', 'success');
		$this->session->set_flashdata('massage', $nim.' Berhasil Dihapus');
		redirect('admin/dashboard/home');
	}

	public function check_nim_exists($nim)
	{
		// Mengecek apakah NIM ada dalam tabel 'mahasiswa'
		$cek = $this->stifar_model->readWhereMore('mahasiswa', 'nim', $nim)->num_rows();

		return ($cek > 0);
	}
}