<?php

namespace App\Database\Seeds;

use CodeIgniter\Database\Seeder;

class AllSeeder extends Seeder
{
    public function run()
    {
        $this->call('KlasifikasiSeeder');
        $this->call('BahasaSeeder');
        $this->call('KategoriSeeder');
        $this->call('PenerbitSeeder');
        $this->call('PustakawanSeeder');
        $this->call('KoleksiSeeder');
        $this->call('AnggotaSeeder');
        $this->call('StokKoleksiSeeder');
        $this->call('PemesananSeeder');
        $this->call('TransaksiSeeder');
    }
}