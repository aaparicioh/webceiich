require 'test_helper'

class OrganocolegiadosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @organocolegiado = organocolegiados(:one)
  end

  test "should get index" do
    get organocolegiados_url
    assert_response :success
  end

  test "should get new" do
    get new_organocolegiado_url
    assert_response :success
  end

  test "should create organocolegiado" do
    assert_difference('Organocolegiado.count') do
      post organocolegiados_url, params: { organocolegiado: { nombre: @organocolegiado.nombre } }
    end

    assert_redirected_to organocolegiado_url(Organocolegiado.last)
  end

  test "should show organocolegiado" do
    get organocolegiado_url(@organocolegiado)
    assert_response :success
  end

  test "should get edit" do
    get edit_organocolegiado_url(@organocolegiado)
    assert_response :success
  end

  test "should update organocolegiado" do
    patch organocolegiado_url(@organocolegiado), params: { organocolegiado: { nombre: @organocolegiado.nombre } }
    assert_redirected_to organocolegiado_url(@organocolegiado)
  end

  test "should destroy organocolegiado" do
    assert_difference('Organocolegiado.count', -1) do
      delete organocolegiado_url(@organocolegiado)
    end

    assert_redirected_to organocolegiados_url
  end
end
