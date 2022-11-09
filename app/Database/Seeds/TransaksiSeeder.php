<?php

namespace App\Database\Seeds;

use App\Models\Transaksi;
use App\Models\TransaksiModel;
use CodeIgniter\Database\Seeder;

class TransaksiSeeder extends Seeder
{
    public function run()
    {
        $r =(int)(new TransaksiModel())->insert([
            'tgl_pinjam'             => '2001-08-11',
            'tgl_harus_kembali'      => '2001-10-31',
            'anggota_id'             => '1',
            'stok_koleksi_id'        => '1',
            'pustakawan_id'          => '1',
            'kembali_pustakawan_id'  => '1',
            'denda'                  => '2000',
            'status_trx'             => 'R',
            'catatan'                => 'Buku ini sudah rusak',
           

        ]);
        echo "hasil insert $r";
    }
}
