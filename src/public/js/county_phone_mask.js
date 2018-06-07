
$(document).ready(function(){
    //$("#phone").mask("+9(999) 999-9999");
    $('#countries_phone1').change(function(){
        var curcolor = $('#countries_phone1 :selected').val();
        if(curcolor == 'UA'){
            curcolor = '+3(809) 999-99999'
        }else{
            curcolor = '+9(999) 999-9999';
        }
        $("#phone").mask(curcolor);
    });
});


$("#countries_phone1").change(function() {
    var country = $("select option:selected").val().toLowerCase();
    $('.selected-flag').parents('div');
    $('.selected-flag').find('div:first-child').removeClass().addClass("iti-flag "+country);
});

$(document).ready(function(){
    $("#phone").intlTelInput();
});

$( "#datepicker" ).datepicker({
    dateFormat: 'yy-mm-dd'
});

function updateSize() {
    var arr = ["jpg", 'gif', 'png', "jpeg"];
    var file = document.getElementById("photo").files[0],
        ext = "не определилось",
        parts = file.name.split('.');
    if (parts.length > 1) ext = parts.pop();
    var checkExt = arr.indexOf( ext ) != -1;

    if(checkExt){
        $('#photo-span').text('');
    }else{
        $('#photo-span').text('Uploaded file is not a valid image. Only JPG and PNG files are allowed.');
    }
}
document.getElementById('photo').addEventListener('change', updateSize);