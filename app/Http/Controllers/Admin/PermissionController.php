<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Spatie\Permission\Models\Permission;
use Toastr;
use DB;
class PermissionController extends Controller
{
    function __construct()
    {
         $this->middleware('permission:permission-list|permission-create|permission-edit|permission-delete', ['only' => ['index','store']]);
         $this->middleware('permission:permission-create', ['only' => ['create','store']]);
         $this->middleware('permission:permission-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:permission-delete', ['only' => ['destroy']]);
    }
    
    public function index(Request $request)
    {
        $show_data = Permission::orderBy('id','DESC')->get();
        return view('backEnd.permissions.index',compact('show_data'));
    }
    
    public function create()
    {
        return view('backEnd.permissions.create');
    }
    
    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|unique:permissions,name',
        ]);
        $input = $request->all();
        $input['guard_name'] = 'web';
        $insert = Permission::create($input);
        Toastr::success('Success','Data store successfully');
        return redirect()->route('permissions.index');
    }
    
    public function edit($id)
    {
        $edit_data = Permission::find($id);
        return view('backEnd.permissions.edit',compact('edit_data'));
    }
    
    public function update(Request $request)
    {
        $this->validate($request, [
            'name' => 'required',
        ]);
        $input = $request->all();
        $input['guard_name'] = 'web';
        $update_data = Permission::find($request->hidden_id);
        $update_data->update($input);
        Toastr::success('Success','Data update successfully');
        return redirect()->route('permissions.index');
    }
    public function destroy(Request $request)
    {
        $delete_data = Permission::find($request->hidden_id)->delete();
        Toastr::success('Success','Data delete successfully');
        return redirect()->back();
    }
}
