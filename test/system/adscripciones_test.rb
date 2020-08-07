require "application_system_test_case"

class AdscripcionesTest < ApplicationSystemTestCase
  setup do
    @adscripcion = adscripciones(:one)
  end

  test "visiting the index" do
    visit adscripciones_url
    assert_selector "h1", text: "Adscripciones"
  end

  test "creating a Adscripcion" do
    visit adscripciones_url
    click_on "New Adscripcion"

    fill_in "Nombre", with: @adscripcion.nombre
    click_on "Create Adscripcion"

    assert_text "Adscripcion was successfully created"
    click_on "Back"
  end

  test "updating a Adscripcion" do
    visit adscripciones_url
    click_on "Edit", match: :first

    fill_in "Nombre", with: @adscripcion.nombre
    click_on "Update Adscripcion"

    assert_text "Adscripcion was successfully updated"
    click_on "Back"
  end

  test "destroying a Adscripcion" do
    visit adscripciones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Adscripcion was successfully destroyed"
  end
end
