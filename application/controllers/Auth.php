<?php

class Auth extends CI_Controller
{
	public function __construct()
	{
		parent::__construct();
		unset($_SESSION['username']);
	}

	public function index()
	{
		$this->load->model('auth_model');
		if($this->auth_model->current_user()){
			redirect('welcome');
		}
		
		$this->load->view('layout/header');
		$this->load->view('layout/nav');
		$this->load->view('login_form');
		$this->load->view('layout/footer');
	}

	public function login()
	{
		$this->load->model('auth_model');

		$username = $this->input->post('username');
		$password = $this->input->post('password');

		if($this->auth_model->login($username, $password)||$this->auth_model->current_user()){
			redirect('welcome');
		} else {
			$this->session->set_flashdata('message_login_error', 'etsss tidak bisa, cek username sama password mu yah ;)');
		}

		redirect('auth');
	}

	public function logout()
	{
		$this->load->model('auth_model');
		$this->auth_model->logout();
		redirect(site_url());
	}
}