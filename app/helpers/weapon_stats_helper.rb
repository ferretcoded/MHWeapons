module WeaponStatsHelper
  def sharpness_color(sharpness)
    {
      "red" => "#ff3333",
      "orange" => "#ff9933",
      "yellow" => "#ffcc33",
      "green" => "#33cc33",
      "blue" => "#3399ff",
      "white" => "#f0f0f0", 
      "purple" => "#cc99ff"
    }[sharpness.to_s.downcase] || "#cccccc"
  end
  
  def sharpness_border_color(sharpness)
    sharpness.to_s.downcase == "white" ? "#ddd" : "transparent"
  end

  def sharpness_progress_class(sharpness)
    "bg-#{sharpness.to_s.downcase}" if ["red", "orange", "yellow", "green", "blue", "white", "purple"].include?(sharpness.to_s.downcase)
  end

  def sharpness_width(sharpness)
    {
      "red" => 15,
      "orange" => 30,
      "yellow" => 45,
      "green" => 60,
      "blue" => 75,
      "white" => 90,
      "purple" => 100
    }[sharpness.to_s.downcase] || 0
  end

  def weapon_type_badge_class(type_name)
    {
      "Great Sword" => "bg-danger",
      "Long Sword" => "bg-primary",
      "Sword & Shield" => "bg-info text-dark",
      "Dual Blades" => "bg-purple",
      "Hammer" => "bg-secondary",
      "Hunting Horn" => "bg-warning text-dark",
      "Lance" => "bg-success",
      "Gunlance" => "bg-indigo",
      "Switch Axe" => "bg-orange",
      "Charge Blade" => "bg-teal",
      "Insect Glaive" => "bg-pink",
      "Bow" => "bg-yellow text-dark",
      "Light Bowgun" => "bg-light text-dark",
      "Heavy Bowgun" => "bg-dark"
    }[type_name] || "bg-secondary"
  end

  def element_badge_class(element)
    {
      "Fire" => "bg-danger",
      "Water" => "bg-primary",
      "Thunder" => "bg-warning text-dark",
      "Ice" => "bg-info text-dark",
      "Dragon" => "bg-purple",
      "Poison" => "bg-success",
      "Sleep" => "bg-indigo",
      "Paralysis" => "bg-orange",
      "Blast" => "bg-dark"
    }[element] || "bg-secondary"
  end
end