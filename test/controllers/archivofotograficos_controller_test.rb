require 'test_helper'

class ArchivofotograficosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @archivofotografico = archivofotograficos(:one)
  end

  test "should get index" do
    get archivofotograficos_url
    assert_response :success
  end

  test "should get new" do
    get new_archivofotografico_url
    assert_response :success
  end

  test "should create archivofotografico" do
    assert_difference('Archivofotografico.count') do
      post archivofotograficos_url, params: { archivofotografico: { anio: @archivofotografico.anio, descripcion: @archivofotografico.descripcion, encargado: @archivofotografico.encargado, titulo: @archivofotografico.titulo } }
    end

    assert_redirected_to archivofotografico_url(Archivofotografico.last)
  end

  test "should show archivofotografico" do
    get archivofotografico_url(@archivofotografico)
    assert_response :success
  end

  test "should get edit" do
    get edit_archivofotografico_url(@archivofotografico)
    assert_response :success
  end

  test "should update archivofotografico" do
    patch archivofotografico_url(@archivofotografico), params: { archivofotografico: { anio: @archivofotografico.anio, descripcion: @archivofotografico.descripcion, encargado: @archivofotografico.encargado, titulo: @archivofotografico.titulo } }
    assert_redirected_to archivofotografico_url(@archivofotografico)
  end

  test "should destroy archivofotografico" do
    assert_difference('Archivofotografico.count', -1) do
      delete archivofotografico_url(@archivofotografico)
    end

    assert_redirected_to archivofotograficos_url
  end
end
