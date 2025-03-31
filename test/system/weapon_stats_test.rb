require "application_system_test_case"

class WeaponStatsTest < ApplicationSystemTestCase
  setup do
    @weapon_stat = weapon_stats(:one)
  end

  test "visiting the index" do
    visit weapon_stats_url
    assert_selector "h1", text: "Weapon stats"
  end

  test "should create weapon stat" do
    visit weapon_stats_url
    click_on "New weapon stat"

    fill_in "Affinity", with: @weapon_stat.affinity
    fill_in "Attack", with: @weapon_stat.attack
    fill_in "Element type", with: @weapon_stat.element_type
    fill_in "Element value", with: @weapon_stat.element_value
    fill_in "Name", with: @weapon_stat.name
    fill_in "Rarity", with: @weapon_stat.rarity
    fill_in "Sharpness", with: @weapon_stat.sharpness
    fill_in "Skills", with: @weapon_stat.skills
    fill_in "Slot1", with: @weapon_stat.slot1
    fill_in "Slot2", with: @weapon_stat.slot2
    fill_in "Slot3", with: @weapon_stat.slot3
    fill_in "Type", with: @weapon_stat.type_id
    click_on "Create Weapon stat"

    assert_text "Weapon stat was successfully created"
    click_on "Back"
  end

  test "should update Weapon stat" do
    visit weapon_stat_url(@weapon_stat)
    click_on "Edit this weapon stat", match: :first

    fill_in "Affinity", with: @weapon_stat.affinity
    fill_in "Attack", with: @weapon_stat.attack
    fill_in "Element type", with: @weapon_stat.element_type
    fill_in "Element value", with: @weapon_stat.element_value
    fill_in "Name", with: @weapon_stat.name
    fill_in "Rarity", with: @weapon_stat.rarity
    fill_in "Sharpness", with: @weapon_stat.sharpness
    fill_in "Skills", with: @weapon_stat.skills
    fill_in "Slot1", with: @weapon_stat.slot1
    fill_in "Slot2", with: @weapon_stat.slot2
    fill_in "Slot3", with: @weapon_stat.slot3
    fill_in "Type", with: @weapon_stat.type_id
    click_on "Update Weapon stat"

    assert_text "Weapon stat was successfully updated"
    click_on "Back"
  end

  test "should destroy Weapon stat" do
    visit weapon_stat_url(@weapon_stat)
    click_on "Destroy this weapon stat", match: :first

    assert_text "Weapon stat was successfully destroyed"
  end
end
