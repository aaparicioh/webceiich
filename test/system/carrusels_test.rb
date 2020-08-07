require "application_system_test_case"

class CarruselsTest < ApplicationSystemTestCase
  setup do
    @carrusel = carrusels(:one)
  end

  test "visiting the index" do
    visit carrusels_url
    assert_selector "h1", text: "Carrusels"
  end

  test "creating a Carrusel" do
    visit carrusels_url
    click_on "New Carrusel"

    fill_in "Imagen", with: @carrusel.imagen
    fill_in "Url", with: @carrusel.url
    click_on "Create Carrusel"

    assert_text "Carrusel was successfully created"
    click_on "Back"
  end

  test "updating a Carrusel" do
    visit carrusels_url
    click_on "Edit", match: :first

    fill_in "Imagen", with: @carrusel.imagen
    fill_in "Url", with: @carrusel.url
    click_on "Update Carrusel"

    assert_text "Carrusel was successfully updated"
    click_on "Back"
  end

  test "destroying a Carrusel" do
    visit carrusels_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Carrusel was successfully destroyed"
  end
end
