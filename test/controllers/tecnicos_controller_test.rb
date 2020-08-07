require 'test_helper'

class TecnicosControllerTest < ActionDispatch::IntegrationTest
  test "should get docencia" do
    get tecnicos_docencia_url
    assert_response :success
  end

  test "should get ligasDeInteres" do
    get tecnicos_ligasDeInteres_url
    assert_response :success
  end

  test "should get lineasDeInvestigacion" do
    get tecnicos_lineasDeInvestigacion_url
    assert_response :success
  end

  test "should get publicaciones" do
    get tecnicos_publicaciones_url
    assert_response :success
  end

  test "should get asociacionesCientificas" do
    get tecnicos_asociacionesCientificas_url
    assert_response :success
  end

end
