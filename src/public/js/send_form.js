$(".btn-submit").click(function(e){
    e.preventDefault();
    var first_name = $("input[name='first_name']").val();
    var last_name = $("input[name='last_name']").val();
    var email = $("input[name='email']").val();
    var birth_date = $("input[name='birth_date']").val();
    var report_subject = $("input[name='report_subject']").val();
    var phone_country = $("input[name='phone_country']").val();
    var country = $('#countries_phone1 :selected').text();
    $.ajax({
        url: "/",
        type:'POST',
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        data: {
            _token : $('meta[name="csrf-token"]').attr('content'),
            first_name:first_name,
            last_name:last_name,
            email:email,
            birth_date:birth_date,
            phone_country:phone_country,
            report_subject:report_subject,
            country:country,
        },
        success: function(data) {
            $('#form').hide("slow");
            $('#form2').show("slow");
        },
        error: function (response) {
            $('div.col-sm-4').find('span:last-child').text('');
            var obj = JSON.parse(response.responseText);
            $.each(obj.errors,function(index, value){
                $('input[name="'+index+'"]').parents('div.col-sm-4').find('span:last-child').text(value);
            });
        }
    });
});

$("#form2-next").click(function(e){
     e.preventDefault();
    var company = $("input[name='company']").val();
    var position = $("input[name='position']").val();
    var aboutMe = $('#aboutMe').val();
    var photo  = $('#photo').val();

    if(photo == ''){
    $.ajax({
        url: "/send",
        type:'POST',
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        data: {
            _token : $('meta[name="csrf-token"]').attr('content'),
            company:company,
            position:position,
            aboutMe:aboutMe,
        },
        success: function(data) {
            $('#form2').hide("slow");
            $('#form3').show("slow");
        },
        error: function (response) {

        }
    });
    }else{
        var data = new FormData();
        $.each($('#photo')[0].files, function(i, file) {
            data.append('files', file);
            data.append('company', company);
            data.append('position', position);
            data.append('aboutMe', aboutMe);
            data.append('photo', photo);
            data.append('_token', $('meta[name="csrf-token"]').attr('content'));
        });

        $.ajax({
            url: '/send',
            headers: {
                'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
            },
            method: 'POST',
            data: data,
            cache: false,
            contentType: false,
            processData: false,
            method: 'POST',
            type: 'POST',
            success: function(data){
                $('#form2').hide("slow");
                $('#form3').show("slow");
            }
        });
    }

});

$('#btn_prev_form2').click(function(){
    $('#form3').hide("slow");
    $('#form2').show("slow");
});


$('#btn_next_prev').click(function(e){
    e.preventDefault();
    $.ajax({
        url: '/first',
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        },
        method: 'POST',
        data: {
            _token : $('meta[name="csrf-token"]').attr('content'),
        },
        cache: false,
        contentType: false,
        processData: false,
        method: 'POST',
        type: 'POST',
        success: function(data){
            window.location="/";
        }
    });

});