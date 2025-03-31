json.extract! weapon_stat, :id, :type_id, :name, :sharpness, :attack, :affinity, :element_type, :element_value, :slot1, :slot2, :slot3, :skills, :rarity, :created_at, :updated_at
json.url weapon_stat_url(weapon_stat, format: :json)
