function load_calendar() {
  $('#calendar').fullCalendar({
    weekends: false,
    editable: true,
    header: {
      left: 'prev,next today',
      center: 'title',
      right: 'month,agendaWeek,agendaDay'},
    defaultView: 'agendaWeek',
    height: 500,
    slotMinutes: 15,
    loading: function(bool){
      if (bool)
        $('#loading').show();
      else
        $('#loading').hide();
    };"
}
