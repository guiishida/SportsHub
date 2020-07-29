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
    selected_year = $('#booking_date_1i').val()
    selected_month = $('#booking_date_2i').val()
    selected_day = $('#booking_date_3i').val()
    selected_date = new Date(selected_year, selected_month - 1, selected_day)
    dayOfWeek = selected_date.getDay()
    $.ajax
        type: 'GET'
        url: 'getAvailableTimeslots'
        data: {
            sport_id: selected_sport,
            facility_id: selected_facility,
            date: selected_date,    
            weekday: dayOfWeek
        }
        dataType: 'json'
        timeout: 4000
        error: (jqXHR, textStatus, errorThrown) ->
            alert textStatus
        success: (data, textStatus, jqXHR) ->
            table = document.getElementById("availabilities");
            sizeOfTable = document.getElementById("availabilities").rows.length;
            if sizeOfTable > 0
              index = 1 
              while index < sizeOfTable
                table.deleteRow 1
                index = index + 1
            if sizeOfTable == 0
              generateTableHead(table)
            generateTable(table, data)
    
    $('.availabilities').show()

generateTableHead =(table) ->
  thead = table.createTHead()  
  row = thead.insertRow()

  th1 = document.createElement("th")
  text1 = document.createTextNode("Código")
  th1.appendChild(text1)
  row.appendChild(th1)

  th2 = document.createElement("th")
  text2 = document.createTextNode("Horário de Início")
  th2.appendChild(text2)
  row.appendChild(th2)

  th3 = document.createElement("th")
  text3 = document.createTextNode("Horário de Término")
  th3.appendChild(text3)
  row.appendChild(th3)

  th4 = document.createElement("th")
  text4 = document.createTextNode("Status")
  th4.appendChild(text4)
  row.appendChild(th4)

  th5 = document.createElement("th")
  text5 = document.createTextNode("Seleção do Horário")
  th5.appendChild(text5)
  row.appendChild(th5)

generateTable =(table, data) ->
  keys = Object.keys(data[0]) 
  k = 0
  while k < data.length
    row = table.insertRow()
    for key in keys
      console.log 
      cell = row.insertCell()
      if key != "timeslot_id"
        text = document.createTextNode(data[k][key])        
        cell.appendChild(text)
      else     
        if data[k]["status"] == "Available"
          button = document.createElement("INPUT")
          button.setAttribute("type", "radio")
          button.setAttribute("id", "booking_timeslot_id")
          button.setAttribute("name", "booking[timeslot_id]")
          button.setAttribute("value", data[k][key])
          cell.appendChild(button)
    k++
