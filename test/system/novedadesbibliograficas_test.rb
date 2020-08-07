require "application_system_test_case"

class NovedadesbibliograficasTest < ApplicationSystemTestCase
  setup do
    @novedadbibliografica = novedadesbibliograficas(:one)
  end

  test "visiting the index" do
    visit novedadesbibliograficas_url
    assert_selector "h1", text: "Novedadesbibliograficas"
  end

  test "creating a Novedadbibliografica" do
    visit novedadesbibliograficas_url
    click_on "New Novedadbibliografica"

    fill_in "Anio", with: @novedadbibliografica.anio
    fill_in "Link", with: @novedadbibliografica.link
    fill_in "Mes", with: @novedadbibliografica.mes
    click_on "Create Novedadbibliografica"

    assert_text "Novedadbibliografica was successfully created"
    click_on "Back"
  end

  test "updating a Novedadbibliografica" do
    visit novedadesbibliograficas_url
    click_on "Edit", match: :first

    fill_in "Anio", with: @novedadbibliografica.anio
    fill_in "Link", with: @novedadbibliografica.link
    fill_in "Mes", with: @novedadbibliografica.mes
    click_on "Update Novedadbibliografica"

    assert_text "Novedadbibliografica was successfully updated"
    click_on "Back"
  end

  test "destroying a Novedadbibliografica" do
    visit novedadesbibliograficas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Novedadbibliografica was successfully destroyed"
  end
end
