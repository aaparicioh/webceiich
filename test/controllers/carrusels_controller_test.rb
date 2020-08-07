require 'test_helper'

class CarruselsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @carrusel = carrusels(:one)
  end

  test "should get index" do
    get carrusels_url
    assert_response :success
  end

  test "should get new" do
    get new_carrusel_url
    assert_response :success
  end

  test "should create carrusel" do
    assert_difference('Carrusel.count') do
      post carrusels_url, params: { carrusel: { imagen: @carrusel.imagen, url: @carrusel.url } }
    end

    assert_redirected_to carrusel_url(Carrusel.last)
  end

  test "should show carrusel" do
    get carrusel_url(@carrusel)
    assert_response :success
  end

  test "should get edit" do
    get edit_carrusel_url(@carrusel)
    assert_response :success
  end

  test "should update carrusel" do
    patch carrusel_url(@carrusel), params: { carrusel: { imagen: @carrusel.imagen, url: @carrusel.url } }
    assert_redirected_to carrusel_url(@carrusel)
  end

  test "should destroy carrusel" do
    assert_difference('Carrusel.count', -1) do
      delete carrusel_url(@carrusel)
    end

    assert_redirected_to carrusels_url
  end
end
