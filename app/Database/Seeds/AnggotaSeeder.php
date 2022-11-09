<?php

namespace App\Database\Seeds;

use App\Models\AnggotaModel;
use CodeIgniter\Database\Seeder;

class AnggotaSeeder extends Seeder
{
    public function run()
    {
        $r = (new AnggotaModel())->insert([
            'nama_depan'    =>'Muhammad Rievaldi',
            'nama_belakang' =>'Rendyansyah Putra',
            'email'         =>'mrievaldrp6@gmail.com',
            'nohp'          =>'089694066522',
            'alamat'        =>'Jl.Komyos Sudarso Komp. Golden Bali Blok B1',
            'kota'          =>'Pontianak',
            'gender'        =>'L',
            'foto'          =>'-',
            'tgl_daftar'    =>'17 Oktober 2021',
            'status_aktif'  =>'A',
            'berlaku_awal'  =>'20 Oktober 2021',
            'berlaku_akhir' =>'20 Oktober 2023',

        ]);
        echo"hasil id =$r";
    }
}