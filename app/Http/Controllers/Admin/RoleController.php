<?php

namespace App\Http\Controllers\Admin;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Spatie\Permission\Models\Role;
use Spatie\Permission\Models\Permission;
use Toastr;
use DB;
class RoleController extends Controller
{
    function __construct()
    {
         $this->middleware('permission:role-list|role-create|role-edit|role-delete', ['only' => ['index','store']]);
         $this->middleware('permission:role-create', ['only' => ['create','store']]);
         $this->middleware('permission:role-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:role-delete', ['only' => ['destroy']]);
    }
    
    public function index(Request $request)
    {
        $show_data = Role::orderBy('id','DESC')->get();
        return view('backEnd.roles.index',compact('show_data'));
    }
    
    public function create()
    {
        $permission = Permission::get();
        return view('backEnd.roles.create',compact('permission'));
    }
    
    public function store(Request $request)
    {
        $this->validate($request, [
            'name' => 'required|unique:roles,name',
            'permission' => 'required',
        ]);
    
        $role = Role::create(['name' => $request->input('name')]);
        $role->syncPermissions($request->input('permission'));
        Toastr::success('Success','Data store successfully');
        return redirect()->route('roles.index');
    }
    
    public function show($id)
    {
        $role = Role::find($id);
        $rolePermissions = Permission::join("role_has_permissions","role_has_permissions.permission_id","=","permissions.id")
            ->where("role_has_permissions.role_id",$id)
            ->get();
    
        return view('backEnd.roles.show',compact('role','rolePermissions'));
    }
    public function edit($id)
    {
        $edit_data = Role::find($id);
        $permission = Permission::get();
        return view('backEnd.roles.edit',compact('edit_data','permission'));
    }
    
    public function update(Request $request)
    {
        $this->validate($request, [
            'name' => 'required',
            'permission' => 'required',
        ]);
        $input = $request->all();
        $update_data = Role::find($request->hidden_id);
        $update_data->update($input);
    
        $update_data->syncPermissions($request->input('permission'));
        Toastr::success('Success','Data update successfully');
        return redirect()->route('roles.index');
    }
    public function destroy(Request $request)
    {
        $delete_data = Role::find($request->hidden_id)->delete();
        Toastr::success('Success','Data delete successfully');
        return redirect()->back();
    }
}
