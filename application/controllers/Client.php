<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Client extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('category_m');
        $this->load->model('Cetak_m');
    }

    public function index()
    {
        $this->template->load('template_c', 'client/home');
    }
}

/* End of file Controllername.php */
