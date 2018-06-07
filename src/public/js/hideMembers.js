$(document).ready(function(){

    $('input[type="checkbox"]').on('change', function(e) {

        var id = e.currentTarget.defaultValue;
        var checked = e.currentTarget.checked;
        console.log(e);
        $.ajax({
            url: '/hide',
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            method: 'POST',
            data: {
                _token : $('meta[name="csrf-token"]').attr('content'),
                id:id,
                checked:checked,
            },
            type: 'POST',
            success: function(){

            }
        });





    });


});