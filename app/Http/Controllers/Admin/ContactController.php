<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Contact;
use Toastr;
class ContactController extends Controller
{
    function __construct()
    {
         $this->middleware('permission:contact-list|contact-create|contact-edit|contact-delete', ['only' => ['index','store']]);
         $this->middleware('permission:contact-create', ['only' => ['create','store']]);
         $this->middleware('permission:contact-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:contact-delete', ['only' => ['destroy']]);
    }

    public function index(Request $request)
    {
        $show_data = Contact::orderBy('id','DESC')->get();
        return view('backEnd.contact.index',compact('show_data'));
    }
    public function create()
    {
        return view('backEnd.contact.create');
    }
    public function store(Request $request)
    {
        $this->validate($request, [
            'phone' => 'required',
            'email' => 'required',
            'address' => 'required',
            'status' => 'required',
        ]);
        $input = $request->all();
        Contact::create($input);
        Toastr::success('Success','Data insert successfully');
        return redirect()->route('contact.index');
    }
    
    public function edit($id)
    {
        $edit_data = Contact::find($id);
        return view('backEnd.contact.edit',compact('edit_data'));
    }
    
    public function update(Request $request)
    {
        
        $this->validate($request, [
            'phone' => 'required',
            'hotmail' => 'required',
            'address' => 'required',
        ]);
        $input = $request->except('hidden_id');
        $update_data = Contact::find($request->hidden_id);
        $update_data->update($input);

        Toastr::success('Success','Data update successfully');
        return redirect()->route('contact.index');
    }
 
    public function inactive(Request $request)
    {
        $inactive = Contact::find($request->hidden_id);
        $inactive->status = 1;
        $inactive->save();
        Toastr::success('Success','Data inactive successfully');
        return redirect()->back();
    }
    public function active(Request $request)
    {
        $active = Contact::find($request->hidden_id);
        $active->status = 1;
        $active->save();
        Toastr::success('Success','Data active successfully');
        return redirect()->back();
    }
    public function destroy(Request $request)
    {
        $delete_data = Contact::find($request->hidden_id);
        $delete_data->delete();
        Toastr::success('Success','Data delete successfully');
        return redirect()->back();
    }
}
