require "application_system_test_case"

class LibrosTest < ApplicationSystemTestCase
  setup do
    @libro = libros(:one)
  end

  test "visiting the index" do
    visit libros_url
    assert_selector "h1", text: "Libros"
  end

  test "creating a Libro" do
    visit libros_url
    click_on "New Libro"

    fill_in "Anio", with: @libro.anio
    fill_in "Autor", with: @libro.autor
    fill_in "Clave", with: @libro.clave
    fill_in "Coleccion", with: @libro.coleccion
    fill_in "Coordinador", with: @libro.coordinador
    fill_in "Descriptores", with: @libro.descriptores
    fill_in "Edicion", with: @libro.edicion
    fill_in "Fecha publicacion", with: @libro.fecha_publicacion
    fill_in "Isbn", with: @libro.isbn
    fill_in "Paginas", with: @libro.paginas
    fill_in "Precio", with: @libro.precio
    fill_in "Sinopsis", with: @libro.sinopsis
    click_on "Create Libro"

    assert_text "Libro was successfully created"
    click_on "Back"
  end

  test "updating a Libro" do
    visit libros_url
    click_on "Edit", match: :first

    fill_in "Anio", with: @libro.anio
    fill_in "Autor", with: @libro.autor
    fill_in "Clave", with: @libro.clave
    fill_in "Coleccion", with: @libro.coleccion
    fill_in "Coordinador", with: @libro.coordinador
    fill_in "Descriptores", with: @libro.descriptores
    fill_in "Edicion", with: @libro.edicion
    fill_in "Fecha publicacion", with: @libro.fecha_publicacion
    fill_in "Isbn", with: @libro.isbn
    fill_in "Paginas", with: @libro.paginas
    fill_in "Precio", with: @libro.precio
    fill_in "Sinopsis", with: @libro.sinopsis
    click_on "Update Libro"

    assert_text "Libro was successfully updated"
    click_on "Back"
  end

  test "destroying a Libro" do
    visit libros_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Libro was successfully destroyed"
  end
end
