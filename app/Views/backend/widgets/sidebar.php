<?php

use SebastianBergmann\CodeCoverage\Report\Html\Dashboard;
?>
    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

<!-- Sidebar - Brand -->
<a class="sidebar-brand d-flex align-items-center justify-content-center" href="index.html">
    <div class="sidebar-brand-icon rotate-n-15">
        <i class="fas fa-laugh-wink"></i>
    </div>
    <div class="sidebar-brand-text mx-3">Pustaka<sup>Kota</sup></div>
</a>

<!-- Divider -->
<hr class="sidebar-divider my-0">

<!-- Nav Item - Dashboard -->
<li class="nav-item active">
    <a class="nav-link" href="<?=site_url('dashboard')?>">
        <i class="fas fa-fw fa-tachometer-alt"></i>
        <span>Dashboard</span></a>
</li>

<!-- Divider -->   
<hr class="sidebar-divider">

<!-- Heading -->
<div class="sidebar-heading">
    Menu pustakawan
</div>

<!-- Nav Item - Pages Collapse Menu -->


    </a>
    
</li>

<!-- Nav Item - Utilities Collapse Menu -->
<li class="nav-item">
    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseUtilities"
        aria-expanded="true" aria-controls="collapseUtilities">
        <i class="fas fa-fw fa-wrench"></i>
        <span>Data Pustaka</span>
    </a>
    <div id="collapseUtilities" class="collapse" aria-labelledby="headingUtilities"
        data-parent="#accordionSidebar">
        <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Kelola Data:</h6>
            <a class="collapse-item" href="<?=site_url('klasifikasi')?>">Klasifikasi</a>
            <a class="collapse-item" href="<?=site_url('bahasa')?>">Bahasa</a>
            <a class="collapse-item" href="<?=site_url('kategori')?>">Kategori</a>
            <a class="collapse-item" href="<?=site_url('penerbit')?>">Penerbit</a>
            <a class="collapse-item" href="<?=site_url('pustakawan')?>">Pustakawan</a>
            <a class="collapse-item" href="<?=site_url('koleksi')?>">Koleksi</a>
            <a class="collapse-item" href="<?=site_url('anggota')?>">anggota</a>
            <a class="collapse-item" href="<?=site_url('stokkoleksi')?>">Stok Koleksi</a>
            <a class="collapse-item" href="<?=site_url('pemesanan')?>">Pemesanan</a>
            <a class="collapse-item" href="<?=site_url('transaksi')?>">Transaksi</a>
            <a class="collapse-item" href="utilities-animation.html">Animations</a>
            <a class="collapse-item" href="utilities-other.html">Other</a>
        </div>
    </div>
</li>

<!-- Divider -->
<hr class="sidebar-divider">

<!-- Heading -->
<div class="sidebar-heading">
    Perpustakaan kota
</div>

<!-- Nav Item - Pages Collapse Menu -->
<li class="nav-item">
    <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapsePages"
        aria-expanded="true" aria-controls="collapsePages">
        <i class="fas fa-fw fa-folder"></i>
        <span>Tampilan</span>
    </a>
    <div id="collapsePages" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
        <div class="bg-white py-2 collapse-inner rounded">
            <h6 class="collapse-header">Login Screens:</h6>
            <a class="collapse-item" href="<?=site_url('login')?>">Logout</a>
  
        </div>
    </div>
</li>


<!-- Divider -->
<hr class="sidebar-divider d-none d-md-block">

<!-- Sidebar Toggler (Sidebar) -->
<div class="text-center d-none d-md-inline">
    <button class="rounded-circle border-0" id="sidebarToggle"></button>
</div>



</ul>
<!-- End of Sidebar -->