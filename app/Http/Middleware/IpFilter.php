<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use App\Models\IpBlock;
class IpFilter
{
    
    public function handle(Request $request, Closure $next)
    {
        $ipblock = IpBlock::where('ip_no',$request->getClientIp())->first();
        if($ipblock){
            abort(403, "You are restricted to access the site. Beacuse ".$ipblock->reason);
        }
        return $next($request);
    }
}
