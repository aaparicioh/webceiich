require 'test_helper'

class InvestigacionControllerTest < ActionDispatch::IntegrationTest
  test "should get cienciasSociales" do
    get investigacion_cienciasSociales_url
    assert_response :success
  end

  test "should get cienciaTecnologia" do
    get investigacion_cienciaTecnologia_url
    assert_response :success
  end

  test "should get ciudadesGestion" do
    get investigacion_ciudadesGestion_url
    assert_response :success
  end

  test "should get derechoSociedad" do
    get investigacion_derechoSociedad_url
    assert_response :success
  end

  test "should get estudiosVisuales" do
    get investigacion_estudiosVisuales_url
    assert_response :success
  end

  test "should get feminista" do
    get investigacion_feminista_url
    assert_response :success
  end

  test "should get historiaCiencia" do
    get investigacion_historiaCiencia_url
    assert_response :success
  end

  test "should get mundoSigloXXI" do
    get investigacion_mundoSigloXXI_url
    assert_response :success
  end

  test "should get poderSubCul" do
    get investigacion_poderSubCul_url
    assert_response :success
  end

  test "should get prodBienServ" do
    get investigacion_prodBienServ_url
    assert_response :success
  end

end
