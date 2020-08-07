require 'test_helper'

class AdscripcionesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @adscripcion = adscripciones(:one)
  end

  test "should get index" do
    get adscripciones_url
    assert_response :success
  end

  test "should get new" do
    get new_adscripcion_url
    assert_response :success
  end

  test "should create adscripcion" do
    assert_difference('Adscripcion.count') do
      post adscripciones_url, params: { adscripcion: { nombre: @adscripcion.nombre } }
    end

    assert_redirected_to adscripcion_url(Adscripcion.last)
  end

  test "should show adscripcion" do
    get adscripcion_url(@adscripcion)
    assert_response :success
  end

  test "should get edit" do
    get edit_adscripcion_url(@adscripcion)
    assert_response :success
  end

  test "should update adscripcion" do
    patch adscripcion_url(@adscripcion), params: { adscripcion: { nombre: @adscripcion.nombre } }
    assert_redirected_to adscripcion_url(@adscripcion)
  end

  test "should destroy adscripcion" do
    assert_difference('Adscripcion.count', -1) do
      delete adscripcion_url(@adscripcion)
    end

    assert_redirected_to adscripciones_url
  end
end
