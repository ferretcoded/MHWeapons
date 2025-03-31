class CreateWeaponStats < ActiveRecord::Migration[8.0]
  def change
    create_table :weapon_stats do |t|
      t.integer :type_id
      t.string :name
      t.string :sharpness
      t.integer :attack
      t.integer :affinity
      t.string :element_type
      t.integer :element_value
      t.integer :slot1
      t.integer :slot2
      t.integer :slot3
      t.string :skills
      t.string :rarity

      t.timestamps
    end
  end
end
