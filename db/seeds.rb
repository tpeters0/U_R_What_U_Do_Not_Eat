Food.destroy_all
Reason.destroy_all
Period.destroy_all
Profile.destroy_all
Restriction.destroy_all

foods = [
  {
      name: "Any Meat"
  },
  {
      name: "Pork"
  },
  {
      name: "Red Meat"
  },
  {
      name: "Shellfish"
  },
  {
      name: "Dairy"
  },
  {
      name: "Tree Nuts"
  },
  {
      name: "Peanuts"
  },
  {
      name: "Eggs"
  },
  {
      name: "Gluten"
  },
  {
      name: "Certain Fruits or Vegetables"
  },
  {
      name: "Non-Organic Food"
  },
  {
      name: "Genetically Modified Food"
  },
  {
      name: "Products with Added Sugar"
  },
  {
      name: "Transfats"
  },
  {
      name: "Products with Caffeine"
  },
  {
      name: "Products with Alcohol"
  },
  {
      name: "Certain Combinations of Foods"
  },
  {
      name: "Other"
  }
]

foods.each do |food_hash|
  Food.create!(food_hash)
end

reasons = [
  {
    why: "Allergies / Food Intolerence"
  },
  {
    why: "Religion"
  },
  {
    why: "Animal Ethics"
  },
  {
    why: "General Health"
  },
  {
    why: "Dislike Taste/Texture"
  },
  {
    why: "Other"
  }
]

reasons.each do |reason_hash|
  Reason.create!(reason_hash)
end

periods = [

  {
    when: "Always"
  },
  {
    when: "Sometimes, when trying to lose weight"
  },
  {
    when: "Certain days of the year (for instance, religious holidays)"
  },
  {
    when: "Periodically, when convictions and willpower are stronger than the food temptation"
  },
  {
    when: "Between Meals"
  },
  {
    when: "During certain hours of the day"
  }

]

periods.each do |period_hash|
  Period.create!(period_hash)
end


profiles = [
  {
    name:    "Tammy",
    admin:   "true"
  },

  {
    name:    "Greg",
    admin:   "false"
  }
]

profiles.each do |profile_hash|
  Profile.create!(profile_hash)
end


restrictions = [
  {
    comment: "tree nut allergy",
    food:    "Tree Nuts",
    profile: "Greg"
  }
]

restrictions.each do |restriction_hash|
  Restriction.create!({
    comment: restriction_hash[:comment],
    food_id: Food.find_by(name: restriction_hash[:food]),
    profile_id: Profile.find_by(name: restriction_hash[:profile])
})
end
