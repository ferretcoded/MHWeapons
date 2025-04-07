class RenameWeaponTypesIdToWeaponTypeId < ActiveRecord::Migration[8.0]
  def change
    rename_column :weapon_stats, :weapon_types_id, :weapon_type_id
  end
end
