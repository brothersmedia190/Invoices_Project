<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\AdminController;
use App\Http\Controllers\Customers_Report;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\InvoiceAchiveController;
use App\Http\Controllers\InvoiceAttachmentsController;
use App\Http\Controllers\Invoices_Report;
use App\Http\Controllers\InvoicesController;
use App\Http\Controllers\InvoicesDetailsController;
use App\Http\Controllers\ProductsController;
use App\Http\Controllers\RoleController;
use App\Http\Controllers\SectionsController;
use App\Http\Controllers\UserController;

Route::get('/', function () {
    return view('auth.login');
});


require __DIR__.'/auth.php';

Route::get('/dashboard', [HomeController::class, 'index'])->name('dashboard'); 
Route::resource('invoices', InvoicesController::class);
Route::resource('sections', SectionsController::class);
Route::resource('products', ProductsController::class);
Route::resource('InvoiceAttachments', InvoiceAttachmentsController::class);
Route::get('/section/{id}', [InvoicesController::class, 'getproducts'])->name('getproducts'); 
Route::get('/InvoicesDetails/{id}', [InvoicesDetailsController::class, 'edit'])->name('edit'); 
Route::get('download/{invoice_number}/{file_name}', [InvoicesDetailsController::class, 'get_file'])->name('get_file'); 
Route::get('View_file/{invoice_number}/{file_name}', [InvoicesDetailsController::class, 'open_file'])->name('open_file'); 
Route::post('delete_file', [InvoicesDetailsController::class, 'destroy'])->name('delete_file'); 
Route::get('/edit_invoice/{id}', [InvoicesController::class, 'edit'])->name('edit'); 
Route::get('/Status_show/{id}', [InvoicesController::class, 'show'])->name('Status_show'); 
Route::post('/Status_Update/{id}', [InvoicesController::class, 'Status_Update'])->name('Status_Update'); 
Route::resource('Archive', InvoiceAchiveController::class);
Route::get('Invoice_Paid', [InvoicesController::class, 'Invoice_Paid'])->name('Invoice_Paid'); 
Route::get('Invoice_UnPaid', [InvoicesController::class, 'Invoice_UnPaid'])->name('Invoice_UnPaid'); 
Route::get('Invoice_Partial', [InvoicesController::class, 'Invoice_Partial'])->name('Invoice_Partial'); 
Route::get('Print_invoice/{id}', [InvoicesController::class, 'Print_invoice'])->name('Print_invoice'); 
Route::get('export_invoices', [InvoicesController::class, 'export'])->name('export'); 

Route::group(['middleware' => ['auth']], function() {
Route::resource('roles', RoleController::class);
Route::resource('users', UserController::class);
});


Route::get('invoices_report', [Invoices_Report::class, 'index'])->name('index'); 
Route::get('customers_report', [Customers_Report::class, 'index'])->name('customers_report'); 
Route::post('Search_customers', [Customers_Report::class, 'Search_customers'])->name('Search_customers');
Route::get('MarkAsRead_all', [InvoicesController::class, 'MarkAsRead_all'])->name('MarkAsRead_all'); 
Route::get('unreadNotifications_count', [InvoicesController::class, 'unreadNotifications_count'])->name('unreadNotifications_count'); 
Route::get('unreadNotifications', [InvoicesController::class, 'unreadNotifications'])->name('unreadNotifications'); 
Route::get('/{page}', [AdminController::class, 'index'])->name('index'); 
Route::post('Search_invoices', [Invoices_Report::class, 'Search_invoices'])->name('Search_invoices'); 