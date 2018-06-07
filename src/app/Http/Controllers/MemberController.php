<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Member;

class MemberController extends Controller
{
    public function index()
    {
        $users = Member::where('hide', '=', 'false')->paginate(5);
        $admin = Member::orderBy('created_at', 'desc')->paginate(5);

        return view('members.members', ['users' => $users, 'admin' => $admin]);
    }

    public function hideMember(Request $request)
    {
        $request = $request->all();

        $user = Member::find($request["id"]);
        $user->hide = $request["checked"];
        $user->save();

    }


}
