<?php

namespace App\Controllers;

use App\Controllers\BaseController;

class dashboardcontroller extends BaseController
{
    public function index()
    {
        return view('backend/dashboard');       
    }
}