<?=$this->extend('backend/template')?>

<?=$this->section('content')?>

<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Dashboard</h1>

    </div>
    <!-- Content Row -->

    <div class="row">

        <!-- Area Chart -->
        <div class="col-xl-4 col-lg-5">
            <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                    <h6 class="m-0 font-weight-bold text-dark">Selamat Datang Di Pustaka Kota</h6>
                    <div class="dropdown no-arrow">

                    </div>
                </div>
                <!-- Card Body -->
                <div class="card-body">
                    <div class="chart-area">
                        <img src="<?=base_url('assets/img/cccc.jpg')?>" width="350" height="320" alt=""></img>
                    </div>
                </div>
            </div>
        </div>


        <!-- Pie Chart -->
        <div class="col-xl-20 col-lg-8">
            <div class="card shadow mb-4">
                <!-- Card Header - Dropdown -->
                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                    <h6 class="m-0 font-weight-bold text-dark">Selamat Datang di Website Pustaka Kota</h6>

                </div>
                <!-- Card Body -->
                <div class="card-body">
                    <div class="chart-pie pt-1 pb-2">
                        <p>Selamat datang di Pustaka Online.<tr> Dengan adanya website perpustakaan ini diharapkan para mahasiswa yang mengakses
                            mendapatkan wawasan yang cukup tentang buku-buku yang ada di Pustaka Online ini, Selamat menikmati layanan perpustakaan online Kami. <br>
                            <br>

                            Semoga dengan adanya Perpustakaan Online ini. diharapkan dapat menambah fasilitas dan menambah minat baca di kalangan mahasiswa.
                        </p>
                    </div>
                    <div class="mt-4 text-center small">
                        <span class="mr-2">
                            <i>Perpustakaan Kota STREK - 2022</i>
                        </span>

                    </div>


                </div>


            </div>
        </div>
    </div>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-dark">Kuota Peminjaman Buku Hari ini</h6>
        </div>
        <div class="card-body">
            <h4 class="small font-weight-bold"><span class="float-right">78%</span></h4>
            <div class="progress mb-4">
                <div class="progress-bar" role="progressbar" style="width: 78%" aria-valuenow="100" aria-valuemin="0"
                    aria-valuemax="100"></div>
            </div>





            <?=$this->endSection()?>