<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Member extends Model
{
    protected $fillable = ['first_name', 'last_name', 'birth_date', 'email', 'report_subject', 'phone_country', 'country', 'company', 'position', 'aboutMe', 'photo'];
}
