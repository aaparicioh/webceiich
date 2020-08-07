require 'test_helper'

class MedioVideosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @medio_video = medio_videos(:one)
  end

  test "should get index" do
    get medio_videos_url
    assert_response :success
  end

  test "should get new" do
    get new_medio_video_url
    assert_response :success
  end

  test "should create medio_video" do
    assert_difference('MedioVideo.count') do
      post medio_videos_url, params: { medio_video: { fecha: @medio_video.fecha, url: @medio_video.url } }
    end

    assert_redirected_to medio_video_url(MedioVideo.last)
  end

  test "should show medio_video" do
    get medio_video_url(@medio_video)
    assert_response :success
  end

  test "should get edit" do
    get edit_medio_video_url(@medio_video)
    assert_response :success
  end

  test "should update medio_video" do
    patch medio_video_url(@medio_video), params: { medio_video: { fecha: @medio_video.fecha, url: @medio_video.url } }
    assert_redirected_to medio_video_url(@medio_video)
  end

  test "should destroy medio_video" do
    assert_difference('MedioVideo.count', -1) do
      delete medio_video_url(@medio_video)
    end

    assert_redirected_to medio_videos_url
  end
end
