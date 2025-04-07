class RemoveTypeIdFromWeaponStats < ActiveRecord::Migration[8.0]
  def change
    remove_column :weapon_stats, :type_id, :integer
  end
end
