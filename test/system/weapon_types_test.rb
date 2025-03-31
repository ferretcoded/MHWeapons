require "application_system_test_case"

class WeaponTypesTest < ApplicationSystemTestCase
  setup do
    @weapon_type = weapon_types(:one)
  end

  test "visiting the index" do
    visit weapon_types_url
    assert_selector "h1", text: "Weapon types"
  end

  test "should create weapon type" do
    visit weapon_types_url
    click_on "New weapon type"

    fill_in "Name", with: @weapon_type.name
    click_on "Create Weapon type"

    assert_text "Weapon type was successfully created"
    click_on "Back"
  end

  test "should update Weapon type" do
    visit weapon_type_url(@weapon_type)
    click_on "Edit this weapon type", match: :first

    fill_in "Name", with: @weapon_type.name
    click_on "Update Weapon type"

    assert_text "Weapon type was successfully updated"
    click_on "Back"
  end

  test "should destroy Weapon type" do
    visit weapon_type_url(@weapon_type)
    click_on "Destroy this weapon type", match: :first

    assert_text "Weapon type was successfully destroyed"
  end
end
