<?php

namespace App\Http\Middleware;

use Closure;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class MustBeAdministrator
{
    /**
     * Handle an incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure(\Illuminate\Http\Request): (\Illuminate\Http\Response|\Illuminate\Http\RedirectResponse)  $next
     * @return \Illuminate\Http\Response|\Illuminate\Http\RedirectResponse
     */
    public function handle(Request $request, Closure $next)
    {

        if(auth()->user()?->username !== 'ahmed gamal'){ // "the ? mark is for null if thier is no user signed in making it optional instead of writing if(auth()->guest()){abort(Response::HTTP_FORBIDDEN);}"
            abort(Response::HTTP_FORBIDDEN); // same as abort(403);
        }

        return $next($request); // if the user is admin then continue to the next middleware or the controller
    }
}
