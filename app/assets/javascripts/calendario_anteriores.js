
$(document).ready(function() {

    $('#calendar_anteriores').fullCalendar({
      header: {
        left: 'prevYear,prev,next,nextYear,today',
        center: 'title',
        right: 'listYear,month'
      },
      minTime: "07:00:00",
      maxTime: "22:00:00",
      allDaySlot: false,
      weekends: false,
      height : 750,
      width  : 300,
      fixedWeekCount: false,
      slotLabelFormat:"HH:mm",
      monthNames: ['Enero','Febrero','Marzo','Abril','Mayo','Junio','Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre'],
      monthNamesShort: ['Ene','Feb','Mar','Abr','May','Jun','Jul','Ago','Sep','Oct','Nov','Dic'],
      dayNames: ['Domingo','Lunes','Martes','Miércoles','Jueves','Viernes','Sábado'],
      dayNamesShort: ['Dom','Lun','Mar','Mié','Jue','Vie','Sáb'],
      buttonText:
      {
        today: 'hoy',
        month: 'mes',
        week:  'semana',
        day:   'día',
        list:  'lista'
      },

      events: '/events.json',
      eventSource: '/activities.json',
      timeFormat: 'H:mm',

      plugins: [ 'interaction', 'dayGrid', 'timeGrid' ],
      selectable: true,
      selectHelper:true,


      eventClick: function(event, jsEvent, view) {
          $('#modalTitle').html(event.title);
          $('#participantes').html(event.participantes);
          $('#fecha_inicial').html(event.fecha_inicial);
          $('#fecha_final').html(event.fecha_final);
          $('#lugar').html(event.lugar);
          $('#coordinacion').html(event.coordinacion);
          $('#coordinacion').html(event.moderador);
          $('#temas').html(event.temas);
          $('#coordinacion').html(event.informes);
          $('#tipo').html(event.tipo);
          $('#extra').html(event.extra);
          $('#informes').html(event.informes);
          $('#colaboracion').html(event.colaboracion);
          $('#actividades_internas').html(event.actividades_internas);
          $('#imagen').html("<img src='" + event.img +"' width='100%' height='100%'>");
          $('#transmision_vivo').html("<div> <a href=\""+event.transmision_vivo +"\" target=\"_blank\">"+event.transmision_vivo+"</a></div>");
          $('#programa_completo').html("<div> <a href=\""+event.programa_completo +"\">"+event.programa_completo+"</a></div>");
          $('#calendarModal').modal();
    }
    });


});