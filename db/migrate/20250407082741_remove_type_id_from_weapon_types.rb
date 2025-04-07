class RemoveTypeIdFromWeaponTypes < ActiveRecord::Migration[8.0]
  def change
    remove_column :weapon_types, :weapon_types_id, :integer
  end
end
