require "application_system_test_case"

class ArchivofotograficosTest < ApplicationSystemTestCase
  setup do
    @archivofotografico = archivofotograficos(:one)
  end

  test "visiting the index" do
    visit archivofotograficos_url
    assert_selector "h1", text: "Archivofotograficos"
  end

  test "creating a Archivofotografico" do
    visit archivofotograficos_url
    click_on "New Archivofotografico"

    fill_in "Anio", with: @archivofotografico.anio
    fill_in "Descripcion", with: @archivofotografico.descripcion
    fill_in "Encargado", with: @archivofotografico.encargado
    fill_in "Titulo", with: @archivofotografico.titulo
    click_on "Create Archivofotografico"

    assert_text "Archivofotografico was successfully created"
    click_on "Back"
  end

  test "updating a Archivofotografico" do
    visit archivofotograficos_url
    click_on "Edit", match: :first

    fill_in "Anio", with: @archivofotografico.anio
    fill_in "Descripcion", with: @archivofotografico.descripcion
    fill_in "Encargado", with: @archivofotografico.encargado
    fill_in "Titulo", with: @archivofotografico.titulo
    click_on "Update Archivofotografico"

    assert_text "Archivofotografico was successfully updated"
    click_on "Back"
  end

  test "destroying a Archivofotografico" do
    visit archivofotograficos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Archivofotografico was successfully destroyed"
  end
end
