class AddTypeIdToWeaponTypes < ActiveRecord::Migration[8.0]
  def change
    add_column :weapon_types, :weapon_types_id, :integer
  end
end
