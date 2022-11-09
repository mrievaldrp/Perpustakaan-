<?php

namespace App\Database\Seeds;

use App\Models\BahasaModel;
use CodeIgniter\Database\Seeder;

class BahasaSeeder extends Seeder
{
    public function run()
    {
        $id = (new BahasaModel())->insert([
            'kode'  =>'id',
            'nama'  =>'Indonesia',
        ]);
        echo "hasil id = $id";
    }
}
