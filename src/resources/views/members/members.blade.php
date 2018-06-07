@extends('default.layouts.layout')

@section('content')
    <div class="container wrapper">
        <div class="content">
            <h1 class="text-center members-tittle">All Members</h1>
            <table class="table table-bordered" width="200px">
                <thead>
                <tr>
                    <th width="7%">Photo</th>
                    <th width="10%">Name</th>
                    <th width="">Report subject</th>
                    <th width="20%">Email</th>
                    @if (Auth::check())
                        @php ($users = $admin)
                        <th width="5%">hide</th>
                    @endif
                </tr>
                </thead>

                <tbody>
                @foreach ($users as $user)
                    @if ($user->hide == 'true')
                       @php ($user->hide = 'checked')
                    @endif
                    @if ($user['photo'] == 0)
                        @php ($user['photo'] = 'one.jpg')
                    @endif
                <tr>
                    <th scope="row"><img src="{{URL::asset('img/'.$user->photo)}}" class="img-responsive"></th>
                    <td>{{ $user->first_name }}</td>
                    <td>{{ $user->report_subject }}</td>
                    <td><a href="mailto:{{ $user->email }}" class="">{{ $user->email }}</a></td>
                    @if (Auth::check())
                        <td><input class="check" value="{{ $user->id }}" id="checkBox" type="checkbox" {{$user->hide}}></td>
                    @endif
                </tr>
                @endforeach
                </tbody>
            </table>
            {{ $users->links() }}
            <ul class="pagination"></ul>
        </div>
    </div>

    <script type="text/javascript" src="{{URL::asset('js/hideMembers.js')}}"></script>
@endsection