jQuery ->
  facilities = $('#booking_facility_id').html()
  $('#booking_sport_id').change ->
    sport = $(this).find('option:selected').text()
    options = $(facilities).filter("optgroup[label='" + sport + "']").html();
    if options
      $('#booking_facility_id').html(options)
    else
      $('#booking_facility_id').empty()


$ ->
  $('.availabilities').hide()
  timeslots = $('#booking_timeslot_id').html()
  $('.generate').click ->
    selected_facility = $('#booking_facility_id').val()
    selected_sport = $('#booking_sport_id').val()
    selected_date = $('#booking_date').val()
    alert(selected_date)
    $.ajax
        type: 'GET'
        url: 'getExistingBookings'
        data: {    
            sport_id: selected_sport,
            facility_id: selected_facility
        }
        dataType: 'json'
        timeout: 4000
        error: (jqXHR, textStatus, errorThrown) ->
            alert textStatus
        success: (data, textStatus, jqXHR) ->
            alert JSON.stringify(data)


    $('.availabilities').show()

  
        