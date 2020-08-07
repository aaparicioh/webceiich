require 'test_helper'

class InvestigadorsControllerTest < ActionDispatch::IntegrationTest
  test "should get docencia" do
    get investigadors_docencia_url
    assert_response :success
  end

  test "should get ligasDeInteres" do
    get investigadors_ligasDeInteres_url
    assert_response :success
  end

  test "should get lineasDeInvestigacion" do
    get investigadors_lineasDeInvestigacion_url
    assert_response :success
  end

  test "should get publicaciones" do
    get investigadors_publicaciones_url
    assert_response :success
  end

  test "should get asociacionesCientificas" do
    get investigadors_asociacionesCientificas_url
    assert_response :success
  end

end
