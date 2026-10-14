<?php

namespace App\Http\Controllers\admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\EcomPixel;
use Toastr;
class PixelsController extends Controller
{
     public function index(Request $request)
    {
        $data =EcomPixel::orderBy('id','DESC')->get();
        return view('backEnd.pixels.index',compact('data'));
    }
    public function create()
    {
        return view('backEnd.pixels.create');
    }
    public function store(Request $request)
    {
        $this->validate($request, [
            'code' => 'required',
            'status' => 'required',
        ]);
        $input = $request->all();
       EcomPixel::create($input);
        Toastr::success('Success','Data insert successfully');
        return redirect()->route('pixels.index');
    }
    
    public function edit($id)
    {
        $edit_data =EcomPixel::find($id);
        return view('backEnd.pixels.edit',compact('edit_data'));
    }
    
    public function update(Request $request)
    {
        $this->validate($request, [
            'code' => 'required',
        ]);
        $update_data =EcomPixel::find($request->id);
        $input = $request->all();
        $input['status'] = $request->status?1:0;
        $update_data->update($input);

        Toastr::success('Success','Data update successfully');
        return redirect()->route('pixels.index');
    }
 
    public function inactive(Request $request)
    {
        $inactive =EcomPixel::find($request->hidden_id);
        $inactive->status = 0;
        $inactive->save();
        Toastr::success('Success','Data inactive successfully');
        return redirect()->back();
    }
    public function active(Request $request)
    {
        $active =EcomPixel::find($request->hidden_id);
        $active->status = 1;
        $active->save();
        Toastr::success('Success','Data active successfully');
        return redirect()->back();
    }
    public function destroy(Request $request)
    {
        $delete_data =EcomPixel::find($request->hidden_id);
        $delete_data->delete();
        Toastr::success('Success','Data delete successfully');
        return redirect()->back();
    }
}
