require 'test_helper'

class PrincipalelementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @principalelement = principalelements(:one)
  end

  test "should get index" do
    get principalelements_url
    assert_response :success
  end

  test "should get new" do
    get new_principalelement_url
    assert_response :success
  end

  test "should create principalelement" do
    assert_difference('Principalelement.count') do
      post principalelements_url, params: { principalelement: { urlImg: @principalelement.urlImg, urlVideo: @principalelement.urlVideo } }
    end

    assert_redirected_to principalelement_url(Principalelement.last)
  end

  test "should show principalelement" do
    get principalelement_url(@principalelement)
    assert_response :success
  end

  test "should get edit" do
    get edit_principalelement_url(@principalelement)
    assert_response :success
  end

  test "should update principalelement" do
    patch principalelement_url(@principalelement), params: { principalelement: { urlImg: @principalelement.urlImg, urlVideo: @principalelement.urlVideo } }
    assert_redirected_to principalelement_url(@principalelement)
  end

  test "should destroy principalelement" do
    assert_difference('Principalelement.count', -1) do
      delete principalelement_url(@principalelement)
    end

    assert_redirected_to principalelements_url
  end
end
