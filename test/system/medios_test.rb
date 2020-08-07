require "application_system_test_case"

class MediosTest < ApplicationSystemTestCase
  setup do
    @medio = medios(:one)
  end

  test "visiting the index" do
    visit medios_url
    assert_selector "h1", text: "Medios"
  end

  test "creating a Medio" do
    visit medios_url
    click_on "New Medio"

    fill_in "Fecha", with: @medio.fecha
    fill_in "Nombre", with: @medio.nombre
    click_on "Create Medio"

    assert_text "Medio was successfully created"
    click_on "Back"
  end

  test "updating a Medio" do
    visit medios_url
    click_on "Edit", match: :first

    fill_in "Fecha", with: @medio.fecha
    fill_in "Nombre", with: @medio.nombre
    click_on "Update Medio"

    assert_text "Medio was successfully updated"
    click_on "Back"
  end

  test "destroying a Medio" do
    visit medios_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Medio was successfully destroyed"
  end
end
