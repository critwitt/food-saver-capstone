# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

i1 = Ingredient.create(name: 'beef', perishable: true, shelf_life: 4)
i2 = Ingredient.create(name: 'lamb', perishable: true, shelf_life: 4)
i3 = Ingredient.create(name: 'ground beef', perishable: true, shelf_life: 2)
i4 = Ingredient.create(name: 'bacon', perishable: true, shelf_life: 7)
i5 = Ingredient.create(name: 'chicken', perishable: true, shelf_life: 2)
i6 = Ingredient.create(name: 'butter', perishable: true, shelf_life: 45)
i7 = Ingredient.create(name: 'cheese', perishable: true, shelf_life: 30)
i8 = Ingredient.create(name: 'cream cheese', perishable: true, shelf_life: 14)
i9 = Ingredient.create(name: 'milk', perishable: true, shelf_life: 7)
i10 = Ingredient.create(name: 'sour cream', perishable: true, shelf_life: 10)
i11 = Ingredient.create(name: 'yogurt', perishable: true, shelf_life: 10)
i12 = Ingredient.create(name: 'apple', perishable: true, shelf_life: 40)
i13 = Ingredient.create(name: 'avocado', perishable: true, shelf_life: 4)
i14 = Ingredient.create(name: 'banana', perishable: true, shelf_life: 3)
i15 = Ingredient.create(name: 'milk', perishable: true, shelf_life: )
i16 = Ingredient.create(name: 'milk', perishable: true, shelf_life: )
i17 = Ingredient.create(name: 'milk', perishable: true, shelf_life: )
i18 = Ingredient.create(name: 'milk', perishable: true, shelf_life: )
i19 = Ingredient.create(name: 'milk', perishable: true, shelf_life: )
i20 = Ingredient.create(name: 'milk', perishable: true, shelf_life: )

r1 = Recipe.create(name:"Spinach Dip", user_id: 1, steps: ["Squeeze thawed spinach dip to drain; spread on paper towels and pat dry. In large bowl, stir spianch, mayonnaise, sour cream, soup mix (dry), water chestnuts, and onion until well mixed. Cover and refrigerate at least 4 hours to blend flavors and soften soup mix.","Cut 1- to 2-inch slice off top of bread loaf; hollow out loaf, leaving 1/2- to 1-inch shell of bread on side and bottom. Reserve scooped-out bread and top of load; cut or tear into pieces to use for dipping. Spoon spinach dip into hollowed-out loaf. Arrage bread pieces around loaf."])