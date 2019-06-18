
document.addEventListener('turbolinks:load', function(){
  
    $('#calendar').fullCalendar(
        { events: '/full_calendars',
         eventDrop : function(event, delta, revertFunc) {
                $.ajax({
                url: '/full_calendars/' + event.id,
                type: 'PATCH',
                dataType: 'JSON',
                data: {
                cleaning_request: {guest_checkin: event.start.format() }
                }
                })
            },
        eventClick: function(event) {
           
            $.ajax({
            url: '/full_calendars/' + event.id + '/edit',
            type: 'GET',
            dataType: 'script'
            })
            }
        }
    );
  
    // $('#calendar').fullCalendar(
    //     {
    //         events: "<%= full_calendars_path %>"
    //         // eventDrop: function(event, delta, revertFunc) {
    //         //     console.log(delta);
    //         //     $.ajax({
    //         //             url: '/full_calendars_index/' + event.id,
    //         //             type: 'PATCH',
    //         //             dataType: 'JSON',
    //         //             data: {
    //         //             event: {start: event.start.format() }
    //         //             }
    //         //     })
    //         // }
    //     }
    // );
  

})