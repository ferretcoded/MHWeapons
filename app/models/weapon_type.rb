class WeaponType < ApplicationRecord
  has_many :weapon_stats, dependent: :destroy
end
