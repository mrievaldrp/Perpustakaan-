<?php

namespace App\Database\Seeds;

use App\Models\PenerbitModel;
use CodeIgniter\Database\Seeder;

class PenerbitSeeder extends Seeder
{
    public function run()
    {
        $id = (new PenerbitModel())->insert([
            'nama'  =>'Aulia',
            'kota'  =>'Pontianak',
            'negara'=>'Indonesia',
        ]);
        echo "hasil id = $id";
    }
}
