require "application_system_test_case"

class EventsTest < ApplicationSystemTestCase
  setup do
    @event = events(:one)
  end

  test "visiting the index" do
    visit events_url
    assert_selector "h1", text: "Events"
  end

  test "creating a Event" do
    visit events_url
    click_on "New Event"

    fill_in "Colaboracion", with: @event.colaboracion
    fill_in "Coordinacion", with: @event.coordinacion
    fill_in "Extra", with: @event.extra
    fill_in "Fecha final", with: @event.fecha_final
    fill_in "Fecha inicial", with: @event.fecha_inicial
    fill_in "Hora final", with: @event.hora_final
    fill_in "Hora inicial", with: @event.hora_inicial
    fill_in "Informes", with: @event.informes
    fill_in "Lugar", with: @event.lugar
    fill_in "Moderador", with: @event.moderador
    fill_in "Participantes", with: @event.participantes
    fill_in "Programa", with: @event.programa
    fill_in "Programa completo", with: @event.programa_completo
    fill_in "Subtitulo", with: @event.subtitulo
    fill_in "Temas", with: @event.temas
    fill_in "Tipo", with: @event.tipo
    fill_in "Titulo", with: @event.titulo
    fill_in "Transmision vivo", with: @event.transmision_vivo
    click_on "Create Event"

    assert_text "Event was successfully created"
    click_on "Back"
  end

  test "updating a Event" do
    visit events_url
    click_on "Edit", match: :first

    fill_in "Colaboracion", with: @event.colaboracion
    fill_in "Coordinacion", with: @event.coordinacion
    fill_in "Extra", with: @event.extra
    fill_in "Fecha final", with: @event.fecha_final
    fill_in "Fecha inicial", with: @event.fecha_inicial
    fill_in "Hora final", with: @event.hora_final
    fill_in "Hora inicial", with: @event.hora_inicial
    fill_in "Informes", with: @event.informes
    fill_in "Lugar", with: @event.lugar
    fill_in "Moderador", with: @event.moderador
    fill_in "Participantes", with: @event.participantes
    fill_in "Programa", with: @event.programa
    fill_in "Programa completo", with: @event.programa_completo
    fill_in "Subtitulo", with: @event.subtitulo
    fill_in "Temas", with: @event.temas
    fill_in "Tipo", with: @event.tipo
    fill_in "Titulo", with: @event.titulo
    fill_in "Transmision vivo", with: @event.transmision_vivo
    click_on "Update Event"

    assert_text "Event was successfully updated"
    click_on "Back"
  end

  test "destroying a Event" do
    visit events_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Event was successfully destroyed"
  end
end
