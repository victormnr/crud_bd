require "application_system_test_case"

class ResponsiblesTest < ApplicationSystemTestCase
  setup do
    @responsible = responsibles(:one)
  end

  test "visiting the index" do
    visit responsibles_url
    assert_selector "h1", text: "Responsibles"
  end

  test "creating a Responsible" do
    visit responsibles_url
    click_on "New Responsible"

    fill_in "Addressresp", with: @responsible.addressResp
    fill_in "Cpfresp", with: @responsible.cpfResp
    fill_in "Income", with: @responsible.income
    fill_in "Nameresp", with: @responsible.nameResp
    click_on "Create Responsible"

    assert_text "Responsible was successfully created"
    click_on "Back"
  end

  test "updating a Responsible" do
    visit responsibles_url
    click_on "Edit", match: :first

    fill_in "Addressresp", with: @responsible.addressResp
    fill_in "Cpfresp", with: @responsible.cpfResp
    fill_in "Income", with: @responsible.income
    fill_in "Nameresp", with: @responsible.nameResp
    click_on "Update Responsible"

    assert_text "Responsible was successfully updated"
    click_on "Back"
  end

  test "destroying a Responsible" do
    visit responsibles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Responsible was successfully destroyed"
  end
end
