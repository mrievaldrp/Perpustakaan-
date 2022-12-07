<?php

namespace Config;

use CodeIgniter\Router\RouteCollection;
use CodeIgniter\Router\RouteCollectionInterface;

// Create a new instance of our RouteCollection class.
$routes = Services::routes();

// Load the system's routing file first, so that the app and ENVIRONMENT
// can override as needed.
if (is_file(SYSTEMPATH . 'Config/Routes.php')) {
    require SYSTEMPATH . 'Config/Routes.php';
}

/*
 * --------------------------------------------------------------------
 * Router Setup
 * --------------------------------------------------------------------
 */
$routes->setDefaultNamespace('App\Controllers');
$routes->setDefaultController('Home');
$routes->setDefaultMethod('index');
$routes->setTranslateURIDashes(false);
$routes->set404Override();
// The Auto Routing (Legacy) is very dangerous. It is easy to create vulnerable apps
// where controller filters or CSRF protection are bypassed.
// If you don't want to define all routes, please use the Auto Routing (Improved).
// Set `$autoRoutesImproved` to true in `app/Config/Feature.php` and set the following to true.
// $routes->setAutoRoute(false);

/*
 * --------------------------------------------------------------------
 * Route Definitions
 * --------------------------------------------------------------------
 */

// We get a performance increase by specifying the default
// route since we don't have to scan directories.
$routes->get('/', 'Home::index');

$routes->group('login', function(RouteCollection $routes){
    $routes->get('lupa', 'PustakawanController::viewLupaPassword');
    $routes->get('/', 'PustakawanController::viewLogin');
    $routes->post('/', 'PustakawanController::login');
    $routes->delete('/', 'PustakawanController::logout');
    $routes->patch('/', 'PustawakanController::lupaPassword');
});

$routes->group('pustakawan', ['filter'=> 'otentikasi'], function(RouteCollection $routes){
    $routes->get('/', 'PustakawanController::index');
    $routes->post('/', 'PustakawanController::store');
    $routes->patch('/', 'PustakawanController::update');
    $routes->delete('/', 'PustakawanController::delete');
    $routes->get('(:num)', 'PustakawanController::show/$1');
    $routes->get('all', 'PustakawanController::all');
});

$routes->group('klasifikasi', function(RouteCollection $routes){
    $routes->get('/', 'KlasifikasiController::index');
    $routes->post('/', 'KlasifikasiController::store');
    $routes->patch('/', 'KlasifikasiController::update');
    $routes->delete('/', 'KlasifikasiController::delete');
    $routes->get('(:num)', 'KlasifikasiController::show/$1');
    $routes->get('all', 'KlasifikasiController::all');
});

$routes->group('bahasa', function(RouteCollection $routes){
    $routes->get('/', 'BahasaController::index');
    $routes->post('/', 'BahasaController::store');
    $routes->patch('/', 'BahasaController::update');
    $routes->delete('/', 'BahasaController::delete');
    $routes->get('(:num)', 'BahasaController::show/$1');
    $routes->get('all', 'BahasaController::all');
});

$routes->group('kategori', function(RouteCollection $routes){
    $routes->get('/', 'KategoriController::index');
    $routes->post('/', 'KategoriController::store');
    $routes->patch('/', 'KategoriController::update');
    $routes->delete('/', 'KategoriController::delete');
    $routes->get('(:num)', 'KategoriController::show/$1');
    $routes->get('all', 'KategoriController::all');
});

$routes->group('penerbit', function(RouteCollection $routes){
    $routes->get('/', 'PenerbitController::index');
    $routes->post('/', 'PenerbitController::store');
    $routes->patch('/', 'PenerbitController::update');
    $routes->delete('/', 'PenerbitController::delete');
    $routes->get('(:num)', 'PenerbitController::show/$1');
    $routes->get('all', 'PenerbitController::all');
});

$routes->group('koleksi', function(RouteCollection $routes){
    $routes->get('/', 'koleksiController::index');
    $routes->post('/', 'koleksiController::store');
    $routes->patch('/', 'koleksiController::update');
    $routes->delete('/', 'koleksiController::delete');
    $routes->get('(:num)', 'koleksiController::show/$1');
    $routes->get('all', 'koleksiController::all');
});

$routes->group('anggota', function(RouteCollection $routes){
    $routes->get('/', 'AnggotaController::index');
    $routes->post('/', 'AnggotaController::store');
    $routes->patch('/', 'AnggotaController::update');
    $routes->delete('/', 'AnggotaController::delete');
    $routes->get('(:num)', 'AnggotaController::show/$1');
    $routes->get('all', 'AnggotaController::all');
});

$routes->group('stokkoleksi', function(RouteCollection $routes){
    $routes->get('/', 'StokkoleksiController::index');
    $routes->post('/', 'StokkoleksiController::store');
    $routes->patch('/', 'StokkoleksiController::update');
    $routes->delete('/', 'StokkoleksiController::delete');
    $routes->get('(:num)', 'StokkoleksiController::show/$1');
    $routes->get('all', 'StokkoleksiController::all');
});

$routes->group('pemesanan', function(RouteCollection $routes){
    $routes->get('/', 'PemesananController::index');
    $routes->post('/', 'PemesananController::store');
    $routes->patch('/', 'PemesananController::update');
    $routes->delete('/', 'PemesananController::delete');
    $routes->get('(:num)', 'PemesananController::show/$1');
    $routes->get('all', 'PemesananController::all');
});

$routes->group('transaksi', function(RouteCollection $routes){
    $routes->get('/', 'TransaksiController::index');
    $routes->post('/', 'TransaksiController::store');
    $routes->patch('/', 'TransaksiController::update');
    $routes->delete('/', 'TransaksiController::delete');
    $routes->get('(:num)', 'TransaksiController::show/$1');
    $routes->get('all', 'TransaksiController::all');
});

$routes->group('dashboard', function(RouteCollection $routes){
    $routes->get('/', 'dashboardcontroller::index');
});



/*
 * --------------------------------------------------------------------
 * Additional Routing
 * --------------------------------------------------------------------
 *
 * There will often be times that you need additional routing and you
 * need it to be able to override any defaults in this file. Environment
 * based routes is one such time. require() additional route files here
 * to make that happen.
 *
 * You will have access to the $routes object within that file without
 * needing to reload it.
 */
if (is_file(APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php')) {
    require APPPATH . 'Config/' . ENVIRONMENT . '/Routes.php';
}
