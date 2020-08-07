require "application_system_test_case"

class PrincipalelementsTest < ApplicationSystemTestCase
  setup do
    @principalelement = principalelements(:one)
  end

  test "visiting the index" do
    visit principalelements_url
    assert_selector "h1", text: "Principalelements"
  end

  test "creating a Principalelement" do
    visit principalelements_url
    click_on "New Principalelement"

    fill_in "Urlimg", with: @principalelement.urlImg
    fill_in "Urlvideo", with: @principalelement.urlVideo
    click_on "Create Principalelement"

    assert_text "Principalelement was successfully created"
    click_on "Back"
  end

  test "updating a Principalelement" do
    visit principalelements_url
    click_on "Edit", match: :first

    fill_in "Urlimg", with: @principalelement.urlImg
    fill_in "Urlvideo", with: @principalelement.urlVideo
    click_on "Update Principalelement"

    assert_text "Principalelement was successfully updated"
    click_on "Back"
  end

  test "destroying a Principalelement" do
    visit principalelements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Principalelement was successfully destroyed"
  end
end
