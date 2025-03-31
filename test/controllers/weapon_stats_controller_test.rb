require "test_helper"

class WeaponStatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @weapon_stat = weapon_stats(:one)
  end

  test "should get index" do
    get weapon_stats_url
    assert_response :success
  end

  test "should get new" do
    get new_weapon_stat_url
    assert_response :success
  end

  test "should create weapon_stat" do
    assert_difference("WeaponStat.count") do
      post weapon_stats_url, params: { weapon_stat: { affinity: @weapon_stat.affinity, attack: @weapon_stat.attack, element_type: @weapon_stat.element_type, element_value: @weapon_stat.element_value, name: @weapon_stat.name, rarity: @weapon_stat.rarity, sharpness: @weapon_stat.sharpness, skills: @weapon_stat.skills, slot1: @weapon_stat.slot1, slot2: @weapon_stat.slot2, slot3: @weapon_stat.slot3, type_id: @weapon_stat.type_id } }
    end

    assert_redirected_to weapon_stat_url(WeaponStat.last)
  end

  test "should show weapon_stat" do
    get weapon_stat_url(@weapon_stat)
    assert_response :success
  end

  test "should get edit" do
    get edit_weapon_stat_url(@weapon_stat)
    assert_response :success
  end

  test "should update weapon_stat" do
    patch weapon_stat_url(@weapon_stat), params: { weapon_stat: { affinity: @weapon_stat.affinity, attack: @weapon_stat.attack, element_type: @weapon_stat.element_type, element_value: @weapon_stat.element_value, name: @weapon_stat.name, rarity: @weapon_stat.rarity, sharpness: @weapon_stat.sharpness, skills: @weapon_stat.skills, slot1: @weapon_stat.slot1, slot2: @weapon_stat.slot2, slot3: @weapon_stat.slot3, type_id: @weapon_stat.type_id } }
    assert_redirected_to weapon_stat_url(@weapon_stat)
  end

  test "should destroy weapon_stat" do
    assert_difference("WeaponStat.count", -1) do
      delete weapon_stat_url(@weapon_stat)
    end

    assert_redirected_to weapon_stats_url
  end
end
