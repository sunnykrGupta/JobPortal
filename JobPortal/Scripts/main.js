$(document).ready(function () {
    $('#create_but').click(function () {
        $('.createjob').css('display', 'inline');
        $('#recjob').hide();
        $('.rec-right').hide();
    }),
    $('#edituser').click(function () {
        $('.editprofile').css('display', 'inline');
        $('#hotjobs').hide();
    });
    
});
