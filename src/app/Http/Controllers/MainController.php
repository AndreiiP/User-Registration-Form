<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use function PHPSTORM_META\elementType;
use Validator;
use App\Http\Requests\CreateUserRequest;
use App\Models\Member;
use Session;
use Illuminate\Support\Facades\Auth;

class MainController extends Controller
{
    public function main()
    {
        $display = Session::get('reboot');

        (!$display) ? $display = 'none' : $display = 'block';
        $users['display'] = $display;

        return view('index', ['users' => $users]);
    }

    public function store(CreateUserRequest $request)
    {
        $request = $request->all();

        $user = Member::create([
            'first_name' =>  $request["first_name"],
            'last_name' =>  $request["last_name"],
            'birth_date' =>  $request["birth_date"],
            'report_subject' =>  $request["report_subject"],
            'phone_country' =>  $request["phone_country"],
            'email' =>  $request["email"],
            'country' =>  $request["country"],
        ]);
        $insertedId = $user->id;
        Session::put('lastId', $insertedId);
        Session::put('reboot', true);
    }

    public function sendFormOne(Request $request)
    {
        $request = $request->all();

        if (!empty($_FILES["files"])) {
            $files = $_FILES['files'];
            $allowed = array('jpg', 'gif', 'png', 'jpeg');
            foreach ($files as $position => $file_name) {
                $file_tmp = $files['tmp_name'];
                $file_error = $files['error'];
                $file_ext = explode('.', $file_name);
                $file_ext = end($file_ext);
                if (in_array($file_ext, $allowed)) {
                    if ($file_error === 0) {
                        $file_name_new = time() . '.' . $file_ext;
                        $file_destination = $_SERVER["DOCUMENT_ROOT"].'/img/' . $file_name_new;
                        if ($a = move_uploaded_file($file_tmp, $file_destination)) {
                        }
                    }
                }
            }
        }

        $user = Member::find(Session::get('lastId'));
        $user->company = $request["company"];
        $user->position = $request["position"];
        $user->about_me = $request["aboutMe"];
        $user->photo =  isset($file_name_new) ? $file_name_new : 0;
        $user->save();
        Session::forget('reboot');
    }

    public function backFirst()
    {
        Session::forget('reboot');
    }
}
