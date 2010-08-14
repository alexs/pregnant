// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

function load_calendar() {
  $('#calendar').fullCalendar({
    weekends: false,
    minTime: 8,
    maxTime: 19,
    monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio','Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
    dayNames: ['Domingo','Lunes','Martes','Miércoles','Jueves','Viernes'],
    dayNamesShort: ['Dom', 'Lun', 'Mar', 'Mié', 'Jue', 'Vie', 'Sab'],
    monthNamesShort: ['Ene', 'Feb', 'Mar', 'Abr', 'May', 'Jun','Jul', 'Ago', 'Sep', 'Oct', 'Nov', 'Dic'],

    buttonText: {
      prev:     '&nbsp;&#9668;&nbsp;',  // left triangle
      next:     '&nbsp;&#9658;&nbsp;',  // right triangle
      prevYear: '&nbsp;&lt;&lt;&nbsp;', // <<
      nextYear: '&nbsp;&gt;&gt;&nbsp;', // >>
      today:    'Hoy',
      month:    'Mes',
      week:     'Semana',
      day:      'Día'
    },

    allDaySlot: false,
    allDayText: 'Todo el día',
    editable: true,
          header: {
              left: 'prev,next today',
              center: 'title',
              right: 'month,agendaWeek,agendaDay'
          },
          defaultView: 'month',
          height: 400,
          slotMinutes: 15,
          loading: function(bool){
              if (bool)
                  $('#loading').show();
              else
                  $('#loading').hide();
          },
          events: "/meetings/get_meetings",
    timeFormat: 'h:mm tt',
          dragOpacity: "0.5",
          eventDrop: function(event, dayDelta, minuteDelta, allDay, revertFunc){
//              if (confirm("Are you sure about this change?")) {
                  moveEvent(event, dayDelta, minuteDelta, allDay);
//              }
//              else {
//                  revertFunc();
//              }
          },
          eventResize: function(event, dayDelta, minuteDelta, revertFunc){
//              if (confirm("Are you sure about this change?")) {
                  resizeEvent(event, dayDelta, minuteDelta);
//              }
//              else {
//                  revertFunc();
//              }
          },
          eventClick: function(event, jsEvent, view){
              showEventDetails(event);
          },
  });
}
