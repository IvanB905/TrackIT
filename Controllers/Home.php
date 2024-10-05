<?php
class Home extends Controller
{
    public function __construct() {
        parent::__construct();
        session_start();
    }
    public function index()
    {
        header('Location: ' . BASE_URL . 'admin');
        exit();
    }
}