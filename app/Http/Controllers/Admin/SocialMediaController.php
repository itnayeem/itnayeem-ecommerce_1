<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\SocialMedia;
use Toastr;
class SocialMediaController extends Controller
{
    function __construct()
    {
         $this->middleware('permission:social-list|social-create|social-edit|social-delete', ['only' => ['index','store']]);
         $this->middleware('permission:social-create', ['only' => ['create','store']]);
         $this->middleware('permission:social-edit', ['only' => ['edit','update']]);
         $this->middleware('permission:social-delete', ['only' => ['destroy']]);
    }

    public function index(Request $request)
    {
        $show_data = SocialMedia::orderBy('id','DESC')->get();
        return view('backEnd.socialmedia.index',compact('show_data'));
    }
    public function create()
    {
        return view('backEnd.socialmedia.create');
    }
    public function store(Request $request)
    {
        $this->validate($request, [
            'title' => 'required',
            'icon' => 'required',
            'status' => 'required',
        ]);
        $input = $request->all();
        SocialMedia::create($input);
        Toastr::success('Success','Data insert successfully');
        return redirect()->route('socialmedias.index');
    }
    
    public function edit($id)
    {
        $edit_data = SocialMedia::find($id);
        return view('backEnd.socialmedia.edit',compact('edit_data'));
    }
    
    public function update(Request $request)
    {
        $this->validate($request, [
            'title' => 'required',
            'icon' => 'required',
        ]);
        $input = $request->all();
        $update_data = SocialMedia::find($request->id);
        $update_data->update($input);

        Toastr::success('Success','Data update successfully');
        return redirect()->route('socialmedias.index');
    }
 
    public function inactive(Request $request)
    {
        $inactive = SocialMedia::find($request->hidden_id);
        $inactive->status = 0;
        $inactive->save();
        Toastr::success('Success','Data inactive successfully');
        return redirect()->back();
    }
    public function active(Request $request)
    {
        $active = SocialMedia::find($request->hidden_id);
        $active->status = 1;
        $active->save();
        Toastr::success('Success','Data active successfully');
        return redirect()->back();
    }
    public function destroy(Request $request)
    {
        $delete_data = SocialMedia::find($request->hidden_id);
        $delete_data->delete();
        Toastr::success('Success','Data delete successfully');
        return redirect()->back();
    }
}
