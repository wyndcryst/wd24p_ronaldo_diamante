<?php

namespace App\Http\Controllers;

use App\Models\Customer;
use Illuminate\Http\Request;

class CustomersController extends Controller
{
    /**
     * Inserting of records
     * 
     * @Param Request $request
     * @return void
     */
    function store (Request $request) 
    {
        $customer = new Customer();

        // $customer->id = $request->id;
        $customer->customer = $request->customer;
        $customer->is_serve = $request->is_serve;

        $customer->save();

        return $customer;
    }

    /**
     * Showing all values
     * 
     * @return void
     */
    function index () 
    {
        // Select * from Customer
        return Customer::all();
    }

    /**
     * Update function
     * 
     * @Param Request $request
     * @Param [type] $id
     * @return void
     */
    function update (Request $request, $id) 
    {
        $customer = Customer::find($id);

        $customer->customer = $request->customer;
        $customer->is_serve = $request->is_serve;

        $customer->save();

        return $customer;
    }

    /**
     * Deleting a record
     * 
     * @Param [type] $id
     * @return void
     */
    function destroy ($id) 
    {
        // Delete from Customer where id = $id
        $customer = Customer::find($id);
        $customer->delete();
        return "Deleted a Customer";
    }

    /**
     * Showing 1 record
     * 
     * @Param [type] $id
     * @return void
     */
    function show ($id) 
    {
        // Select * from Customer where id = $id
        return Customer::find($id);
    }

    function isCustomerServed(Request $request, $id) {
        if ($request->is_serve == true) {
            return "regularButton is enabled";
        }
    }
}