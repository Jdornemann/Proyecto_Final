

document.addEventListener('turbolinks:load', function(){

    $('.img-avatar-cser').on('click', function(){

        $.ajax({
            type: "GET",
            url: "/cleaning_requests/new",
            dataType: "script",
            success: function (response) {
                
            }
        });
    
    });
    $('.img-avatar-prop').on('click', function(){

        $.ajax({
            type: "GET",
            url: "/flat_details/new",
            dataType: "script",
            success: function (response) {
                
            }
        });
    
    });
    $('.img-avatar-maps').on('click', function(){

        $.ajax({
            type: "GET",
            url: "/geomaps",
            dataType: "html",
            success: function (response) {
              
                window.location.replace("/geomaps");
            }
        });
    
    });
    $('.img-avatar-cal').on('click', function(){

        $.ajax({
            type: "GET",
            url: "/full_calendars",
            dataType: "html",
            success: function (response) {
              
                window.location.replace("/full_calendars");
            }
        });
    
    });
    $('.img-avatar-cser').on('click', function(){

        $.ajax({
            type: "GET",
            url: "/cleaning_requests/new",
            dataType: "script",
            success: function (response) {
                
            }
        });
    
    });



   
})