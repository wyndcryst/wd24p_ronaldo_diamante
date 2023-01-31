<?php

use App\Http\Controllers\CustomersController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::get("/customers", [CustomersController::class, 'index']);
Route::get("/customers/{id}", [CustomersController::class, 'show']);
Route::post("/customers", [CustomersController::class, 'store']);
Route::put("/customers/{id}", [CustomersController::class, 'update']);
Route::delete("/customers/{id}", [CustomersController::class, 'destroy']);

Route::put("/customer-queue/{id}", [CustomersController::class, 'isCustomerServed']);