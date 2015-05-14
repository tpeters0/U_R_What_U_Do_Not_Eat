
Food.destroy_all


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
      name: "Certain fruits or vegetables"
  },
  {
      name: "Non-Organic Food"
  },
  {
      name: "Genetically Modified Food"
  },
  {
      name: "Products With Added Sugar"
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
  },
]

foods.each do |food_hash|
  Food.create!(food_hash)
end
