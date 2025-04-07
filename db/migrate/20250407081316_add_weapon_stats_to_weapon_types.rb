class AddWeaponStatsToWeaponTypes < ActiveRecord::Migration[8.0]
  def change
    add_reference :weapon_stats, :weapon_types, null: false, foreign_key: true
  end
end
