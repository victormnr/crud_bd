require "application_system_test_case"

class SecretariesTest < ApplicationSystemTestCase
  setup do
    @secretary = secretaries(:one)
  end

  test "visiting the index" do
    visit secretaries_url
    assert_selector "h1", text: "Secretaries"
  end

  test "creating a Secretary" do
    visit secretaries_url
    click_on "New Secretary"

    fill_in "Coordinator", with: @secretary.coordinator
    fill_in "State", with: @secretary.state
    click_on "Create Secretary"

    assert_text "Secretary was successfully created"
    click_on "Back"
  end

  test "updating a Secretary" do
    visit secretaries_url
    click_on "Edit", match: :first

    fill_in "Coordinator", with: @secretary.coordinator
    fill_in "State", with: @secretary.state
    click_on "Update Secretary"

    assert_text "Secretary was successfully updated"
    click_on "Back"
  end

  test "destroying a Secretary" do
    visit secretaries_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Secretary was successfully destroyed"
  end
end
