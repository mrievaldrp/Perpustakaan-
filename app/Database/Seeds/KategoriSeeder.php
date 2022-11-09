<?php

namespace App\Database\Seeds;

use App\Models\KategoriModel;
use CodeIgniter\Database\Seeder;

class KategoriSeeder extends Seeder
{
    public function run()
    {
        $id = (new KategoriModel())->insert([
            'nama'  =>'Kamus',
        ]);
        echo "hasil id = $id";
    }
}
