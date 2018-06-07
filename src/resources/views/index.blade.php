@extends('default.layouts.layout')

@section('content')
    <body>
    <div id="map"></div>
    <div class="container wrapper">
        <div class="content">
            @if(Session::has('reboot') == false)
            <form class="form-horizontal" method="post" id="form">
                {{ csrf_field() }}
                <h1 class="headerFormName text-center lable_participate">To participate in the conference, please fill out the form</h1>
                <!-- name -->
                <div class="form-group">
                    <label for="inputName" class="col-sm-4 control-label">Firstname</label>
                    <div class="col-sm-4">
                        <input type="text" class="form-control" id="first_name" name="first_name" placeholder="Ben">
                        <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                        <span class="h-message" id="name-span"></span>
                    </div>
                </div>

                <!-- last name -->
                <div class="form-group">
                    <label for="inputName" class="col-sm-4 control-label">Lastname</label>
                    <div class="col-sm-4">
                        <input type="text" class="form-control" id="last_name" name="last_name" placeholder="Pitterson">
                        <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                        <span class="h-message" id="lastname-span"></span>
                    </div>
                </div>

                <!-- birth date -->
                <div class="bootstrap-iso">
                    <div class="row form-group">
                        <label class="col-sm-4 control-label" for="date">Birthdate</label>
                        <div class="col-sm-4">
                            <input class="form-control" id="datepicker" name="birth_date" placeholder="MM/DD/YYY" type="text"/>
                            <span class="h-message" id="date-span"></span>
                        </div>
                    </div>
                </div>

                <!-- report subject -->
                <div class="form-group">
                    <label class="col-sm-4 control-label">Report Subject</label>
                    <div class="col-sm-4">
                        <input type="text" class="form-control" id="report_subject" name="report_subject" placeholder="Report">
                        <span class="h-message" id="report-subject-span"></span>
                    </div>
                </div>

                <!-- country -->
                <div class="form-group">
                    <label class="col-sm-4 control-label">Country</label>
                    <div class="col-sm-4 control-label">
                        <select data-code-mode="alpha2" data-role="country-selector" id="countries_phone1" class="form-control bfh-countries" name="country">

                        </select>
                    </div>
                </div>

                <!-- phone -->
                <div class="form-group">
                    <label class="col-sm-4 control-label">Phone</label>
                    <div class="col-sm-4">
                        <input id="phone" type="text" class="form-control" name="phone_country" placeholder="+1(999) 999-9999" width="100%">

                        <span class="h-message" id="phone-country-span"></span>
                    </div>
                </div>

                <!-- email -->
                <div class="form-group">
                    <label for="inputEmail3" class="col-sm-4 control-label">Email</label>
                    <div class="col-sm-4">
                        <input type="email" class="form-control" name="email" id="email" placeholder="Pitterson@gmail.com" pattern="^[a-zA-Z0-9.!#$%&’*+/=?^_`{|}~-]+@[a-zA-Z0-9-]+(?:\.[a-zA-Z0-9-]+)*$">
                        <span class="h-message" id="email-span-2">The email has already been taken.</span>
                        <span class="h-message" id="email-span"></span>

                    </div>
                </div>

                <!-- next -->
                <div class="form-group">
                    <div class="col-sm-offset-4 col-sm-1">
                        <button class="btn btn-success btn-submit">Submit</button>
                    </div>
                </div>

                <div class="alert alert-danger print-error-msg" style="display:none">
                    <ul></ul>
                </div>

            </form>
            @endif
        </div>
    </div>

    <div class="container wrapper">
        <div class="content">
        <form class="form-horizontal" method="post" id="form2" style="display: {{$users['display']}}">
            {{ csrf_field() }}
            <h1 class="headerFormName text-center lable_participate">To participate in the conference, please fill out the form</h1>
            <!-- company -->
            <div class="form-group">
                <label for="inputName" class="col-sm-4 control-label">Company</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" id="company" name="company" placeholder="MIT">
                    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                </div>
            </div>
            <!-- position -->
            <div class="form-group">
                <label for="inputName" class="col-sm-4 control-label">Position</label>
                <div class="col-sm-4">
                    <input type="text" class="form-control" id="position" name="position" placeholder="">
                    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                </div>
            </div>

            <!-- about me -->
            <div class="form-group">
                <label for="inputName" class="col-sm-4 control-label">About me</label>
                <div class="col-sm-4">
                    <textarea id="aboutMe" class="form-control" name="aboutMe" rows="5"></textarea>
                    <span class="glyphicon form-control-feedback" aria-hidden="true"></span>
                </div>
            </div>

            <!-- photo -->
            <div class="form-group">
                <label class="col-sm-4 control-label" for="exampleFormControlFile1">File</label>
                <div class="col-sm-4">
                    <input type="file" class="form-control-file input" id="photo" name="photo" >
                    <div id="e-fileinfo"></div>
                    <span class="h-message" id="photo-span"></span>
                </div>
            </div>

            <!-- prev  next-->
            <div class="form-group">
                <div class="col-sm-offset-4 col-sm-1">
                    <button class="btn btn-primary" id="btn_next_prev" name="Prev">Back to first form</button>
                </div>
                <div class="col-sm-offset-2 col-sm-1">
                    <button class="btn btn-success" id="form2-next">Next</button>
                </div>
            </div>

        </form>
        </div>
    </div>
    <div class="container wrapper">
        <div class="content">
            <form class="form-horizontal" method="post" id="form3" style="display: none">
                <h2 class="sh">Share</h2>
                <span class="socialShare"></span>
                <div class="all-members">
                    <a href="/member" class="">All members</a>
                    <div class="col-sm-offset-4 col-sm-1">
                        <input type="button" id="btn_prev_form2" name="Next" class="btn btn-primary" value="Back to form">
                    </div>
                </div>

                <div class="form-group">
                </div>
            </form>
        </div>
    </div>

    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCOiOa1BqSD27qhP8wY1PbFFhLOyjZmtnA&callback=initMap"
            async defer></script>

    <script type="text/javascript" src="{{URL::asset('js/google_map.js')}}"></script>
    <script type="text/javascript" src="{{URL::asset('js/send_form.js')}}"></script>
    <script type="text/javascript" src="{{URL::asset('js/jquery.maskedinput.min.js')}}"></script>
    <script type="text/javascript" src="{{URL::asset('js/intlTelInput.js')}}"></script>
    <script type="text/javascript" src="{{URL::asset('js/jquery_countrySelector.js')}}"></script>
    <script type="text/javascript" src="{{URL::asset('js/county_phone_mask.js')}}"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>
    <script src="{{URL::asset('js/plugin.js')}}"></script>

    <script>
        $(function (){
            var url = '<?php echo SHARE_URL; ?>';
            var options = {
                twitter: {
                    text: '<?php echo SHARE_TEXT; ?>  ',
                    via: ''
                },
                facebook : true,
                googlePlus : true
            };
            $('.socialShare').shareButtons(url, options);
        });
    </script>

    </body>
@endsection

