require "application_system_test_case"

class MedioVideosTest < ApplicationSystemTestCase
  setup do
    @medio_video = medio_videos(:one)
  end

  test "visiting the index" do
    visit medio_videos_url
    assert_selector "h1", text: "Medio Videos"
  end

  test "creating a Medio video" do
    visit medio_videos_url
    click_on "New Medio Video"

    fill_in "Fecha", with: @medio_video.fecha
    fill_in "Url", with: @medio_video.url
    click_on "Create Medio video"

    assert_text "Medio video was successfully created"
    click_on "Back"
  end

  test "updating a Medio video" do
    visit medio_videos_url
    click_on "Edit", match: :first

    fill_in "Fecha", with: @medio_video.fecha
    fill_in "Url", with: @medio_video.url
    click_on "Update Medio video"

    assert_text "Medio video was successfully updated"
    click_on "Back"
  end

  test "destroying a Medio video" do
    visit medio_videos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Medio video was successfully destroyed"
  end
end
