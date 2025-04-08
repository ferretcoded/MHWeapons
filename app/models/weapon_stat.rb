class WeaponStat < ApplicationRecord
  belongs_to :weapon_type

  validates :slot1, inclusion: { in: 0..3, message: "value must be between 1 and 3" }, presence: true
  validates :slot2, inclusion: { in: 0..3, message: "value must be between 1 and 3" }, presence: true
  validates :slot3, inclusion: { in: 0..3, message: "value must be between 1 and 3" }, presence: true
  validates :name, presence: true, uniqueness: true

  validate :sharpness_format_valid

  private

  def sharpness_format_valid
    return if sharpness.blank? || sharpness == "None"

    unless sharpness.match?(/^(Red|Orange|Yellow|Green|Blue|White|Purple)\s\d+$/)
      errors.add(:sharpness, "must be in format 'Color Value' (e.g. 'Green 50') or 'None'")
    end
  end
end
