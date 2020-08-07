require 'test_helper'

class MediosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medio = medios(:one)
  end

  test "should get index" do
    get medios_url
    assert_response :success
  end

  test "should get new" do
    get new_medio_url
    assert_response :success
  end

  test "should create medio" do
    assert_difference('Medio.count') do
      post medios_url, params: { medio: { fecha: @medio.fecha, nombre: @medio.nombre } }
    end

    assert_redirected_to medio_url(Medio.last)
  end

  test "should show medio" do
    get medio_url(@medio)
    assert_response :success
  end

  test "should get edit" do
    get edit_medio_url(@medio)
    assert_response :success
  end

  test "should update medio" do
    patch medio_url(@medio), params: { medio: { fecha: @medio.fecha, nombre: @medio.nombre } }
    assert_redirected_to medio_url(@medio)
  end

  test "should destroy medio" do
    assert_difference('Medio.count', -1) do
      delete medio_url(@medio)
    end

    assert_redirected_to medios_url
  end
end
