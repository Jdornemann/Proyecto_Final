
document.addEventListener('turbolinks:load', function(){
  
    $('#calendar').fullCalendar(
        { events: '/full_calendars'}
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