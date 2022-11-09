<?php

namespace App\Database\Seeds;

use App\Models\KlasifikasiModel;
use CodeIgniter\Database\Seeder;

class KlasifikasiSeeder extends Seeder
{
    public function run()
    {
        $id = (new KlasifikasiModel())->insert([
            'ddc'   =>'000',
            'nama'  =>'Karya Umum',
        ]);
        echo "hasil id = $id";
    }
}
