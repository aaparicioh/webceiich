require "application_system_test_case"

class OrganocolegiadosTest < ApplicationSystemTestCase
  setup do
    @organocolegiado = organocolegiados(:one)
  end

  test "visiting the index" do
    visit organocolegiados_url
    assert_selector "h1", text: "Organocolegiados"
  end

  test "creating a Organocolegiado" do
    visit organocolegiados_url
    click_on "New Organocolegiado"

    fill_in "Nombre", with: @organocolegiado.nombre
    click_on "Create Organocolegiado"

    assert_text "Organocolegiado was successfully created"
    click_on "Back"
  end

  test "updating a Organocolegiado" do
    visit organocolegiados_url
    click_on "Edit", match: :first

    fill_in "Nombre", with: @organocolegiado.nombre
    click_on "Update Organocolegiado"

    assert_text "Organocolegiado was successfully updated"
    click_on "Back"
  end

  test "destroying a Organocolegiado" do
    visit organocolegiados_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Organocolegiado was successfully destroyed"
  end
end
