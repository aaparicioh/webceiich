require 'test_helper'

class NovedadesbibliograficasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @novedadbibliografica = novedadesbibliograficas(:one)
  end

  test "should get index" do
    get novedadesbibliograficas_url
    assert_response :success
  end

  test "should get new" do
    get new_novedadbibliografica_url
    assert_response :success
  end

  test "should create novedadbibliografica" do
    assert_difference('Novedadbibliografica.count') do
      post novedadesbibliograficas_url, params: { novedadbibliografica: { anio: @novedadbibliografica.anio, link: @novedadbibliografica.link, mes: @novedadbibliografica.mes } }
    end

    assert_redirected_to novedadbibliografica_url(Novedadbibliografica.last)
  end

  test "should show novedadbibliografica" do
    get novedadbibliografica_url(@novedadbibliografica)
    assert_response :success
  end

  test "should get edit" do
    get edit_novedadbibliografica_url(@novedadbibliografica)
    assert_response :success
  end

  test "should update novedadbibliografica" do
    patch novedadbibliografica_url(@novedadbibliografica), params: { novedadbibliografica: { anio: @novedadbibliografica.anio, link: @novedadbibliografica.link, mes: @novedadbibliografica.mes } }
    assert_redirected_to novedadbibliografica_url(@novedadbibliografica)
  end

  test "should destroy novedadbibliografica" do
    assert_difference('Novedadbibliografica.count', -1) do
      delete novedadbibliografica_url(@novedadbibliografica)
    end

    assert_redirected_to novedadesbibliograficas_url
  end
end
