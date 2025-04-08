class RevertSharpnessToStringInWeaponStats < ActiveRecord::Migration[8.0]
  def change
    change_column :weapon_stats, :sharpness, :string
  end
end
