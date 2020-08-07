require "application_system_test_case"

class ArchivosTest < ApplicationSystemTestCase
  setup do
    @archivo = archivos(:one)
  end

  test "visiting the index" do
    visit archivos_url
    assert_selector "h1", text: "Archivos"
  end

  test "creating a Archivo" do
    visit archivos_url
    click_on "New Archivo"

    fill_in "Fecha", with: @archivo.fecha
    fill_in "Fuente", with: @archivo.fuente
    fill_in "Titulo", with: @archivo.titulo
    click_on "Create Archivo"

    assert_text "Archivo was successfully created"
    click_on "Back"
  end

  test "updating a Archivo" do
    visit archivos_url
    click_on "Edit", match: :first

    fill_in "Fecha", with: @archivo.fecha
    fill_in "Fuente", with: @archivo.fuente
    fill_in "Titulo", with: @archivo.titulo
    click_on "Update Archivo"

    assert_text "Archivo was successfully updated"
    click_on "Back"
  end

  test "destroying a Archivo" do
    visit archivos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Archivo was successfully destroyed"
  end
end
