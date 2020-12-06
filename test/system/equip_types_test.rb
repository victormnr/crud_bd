require "application_system_test_case"

class EquipTypesTest < ApplicationSystemTestCase
  setup do
    @equip_type = equip_types(:one)
  end

  test "visiting the index" do
    visit equip_types_url
    assert_selector "h1", text: "Equip Types"
  end

  test "creating a Equip type" do
    visit equip_types_url
    click_on "New Equip Type"

    fill_in "Description", with: @equip_type.description
    click_on "Create Equip type"

    assert_text "Equip type was successfully created"
    click_on "Back"
  end

  test "updating a Equip type" do
    visit equip_types_url
    click_on "Edit", match: :first

    fill_in "Description", with: @equip_type.description
    click_on "Update Equip type"

    assert_text "Equip type was successfully updated"
    click_on "Back"
  end

  test "destroying a Equip type" do
    visit equip_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Equip type was successfully destroyed"
  end
end
