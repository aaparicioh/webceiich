require 'test_helper'

class EventsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @event = events(:one)
  end

  test "should get index" do
    get events_url
    assert_response :success
  end

  test "should get new" do
    get new_event_url
    assert_response :success
  end

  test "should create event" do
    assert_difference('Event.count') do
      post events_url, params: { event: { colaboracion: @event.colaboracion, coordinacion: @event.coordinacion, extra: @event.extra, fecha_final: @event.fecha_final, fecha_inicial: @event.fecha_inicial, hora_final: @event.hora_final, hora_inicial: @event.hora_inicial, informes: @event.informes, lugar: @event.lugar, moderador: @event.moderador, participantes: @event.participantes, programa: @event.programa, programa_completo: @event.programa_completo, subtitulo: @event.subtitulo, temas: @event.temas, tipo: @event.tipo, titulo: @event.titulo, transmision_vivo: @event.transmision_vivo } }
    end

    assert_redirected_to event_url(Event.last)
  end

  test "should show event" do
    get event_url(@event)
    assert_response :success
  end

  test "should get edit" do
    get edit_event_url(@event)
    assert_response :success
  end

  test "should update event" do
    patch event_url(@event), params: { event: { colaboracion: @event.colaboracion, coordinacion: @event.coordinacion, extra: @event.extra, fecha_final: @event.fecha_final, fecha_inicial: @event.fecha_inicial, hora_final: @event.hora_final, hora_inicial: @event.hora_inicial, informes: @event.informes, lugar: @event.lugar, moderador: @event.moderador, participantes: @event.participantes, programa: @event.programa, programa_completo: @event.programa_completo, subtitulo: @event.subtitulo, temas: @event.temas, tipo: @event.tipo, titulo: @event.titulo, transmision_vivo: @event.transmision_vivo } }
    assert_redirected_to event_url(@event)
  end

  test "should destroy event" do
    assert_difference('Event.count', -1) do
      delete event_url(@event)
    end

    assert_redirected_to events_url
  end
end
