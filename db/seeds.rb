# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# i1 = Perishable.create(user_id: 1, ingredient_id: 1, date_entered: "09/11/2022", expired: false)
# i2 = Perishable.create(user_id: 1, ingredient_id: 3, date_entered: "09/11/2022", expired: false)
# i3 = Perishable.create(user_id: 1, ingredient_id: 4, date_entered: "09/11/2022", expired: false)
# i4 = Perishable.create(user_id: 1, ingredient_id: 5, date_entered: "09/11/2022", expired: false)
# i5 = Perishable.create(user_id: 1, ingredient_id: 6, date_entered: "09/11/2022", expired: false)
# i6 = Perishable.create(user_id: 1, ingredient_id: 7, date_entered: "09/11/2022", expired: false)
# i7 = Perishable.create(user_id: 1, ingredient_id: 8, date_entered: "09/11/2022", expired: false)
# i8 = Perishable.create(user_id: 1, ingredient_id: 9, date_entered: "09/11/2022", expired: false)
# i9 = Perishable.create(user_id: 1, ingredient_id: 10, date_entered: "09/11/2022", expired: false)
# i10 = Perishable.create(user_id: 1, ingredient_id: 12, date_entered: "09/11/2022", expired: false)

# i10 = Ingredient.create(name: 'sour cream', perishable: true, shelf_life: 10)
# i11 = Ingredient.create(name: 'yogurt', perishable: true, shelf_life: 10)
# i12 = Ingredient.create(name: 'apple', perishable: true, shelf_life: 40)
# i13 = Ingredient.create(name: 'avocado', perishable: true, shelf_life: 4)
# i14 = Ingredient.create(name: 'banana', perishable: true, shelf_life: 3)
# i15 = Ingredient.create(name: 'milk', perishable: true, shelf_life: )
# i16 = Ingredient.create(name: 'milk', perishable: true, shelf_life: )
# i17 = Ingredient.create(name: 'milk', perishable: true, shelf_life: )
# i18 = Ingredient.create(name: 'milk', perishable: true, shelf_life: )
# i19 = Ingredient.create(name: 'milk', perishable: true, shelf_life: )
# i20 = Ingredient.create(name: 'milk', perishable: true, shelf_life: )

# r1 = Recipe.create(name:"Spinach Dip", user_id: 1, steps: ["Squeeze thawed spinach dip to drain; spread on paper towels and pat dry. In large bowl, stir spianch, mayonnaise, sour cream, soup mix (dry), water chestnuts, and onion until well mixed. Cover and refrigerate at least 4 hours to blend flavors and soften soup mix.", "Cut 1- to 2-inch slice off top of bread loaf; hollow out loaf, leaving 1/2- to 1-inch shell of bread on side and bottom. Reserve scooped-out bread and top of load; cut or tear into pieces to use for dipping. Spoon spinach dip into hollowed-out loaf. Arrage bread pieces around loaf."])

# il1 = IngredientList.create(ingredient_id: Ingredient.all.find_by(name: "spinach").id, recipe_id: Recipe.all.find_by(name: "Spinach Dip").id, ingredient_amount: 9, unit: "oz")

# Meats / Eggs
m1 = Ingredient.create(name: "Whole Chicken", perishable: true, shelf_life: 2, image: "https://media.healthyfood.com/wp-content/uploads/2017/03/Ask-the-experts-Raw-chicken.jpg", category: "meat")
m2 = Ingredient.create(name: "Chicken Thighs", perishable: true, shelf_life: 2, image: "https://www.kochfoods.com/wp-content/uploads/2022/07/DA-855830932.jpg", category: "meat")
m3 = Ingredient.create(name: "Chicken Breasts", perishable: true, shelf_life: 2, image: "https://static.onecms.io/wp-content/uploads/sites/19/2012/08/13/GettyImages-182184170.jpg", category: "meat")
m4 = Ingredient.create(name: "Chicken Wings", perishable: true, shelf_life: 2, image: "https://images.squarespace-cdn.com/content/v1/53c42a94e4b0e10af0db5328/1547342578018-OPWWJM7TFMMAPP1K4GL1/Raw+Chicken+Wings.jpg?format=1000w", category: "meat")
m5 = Ingredient.create(name: "Chicken Drumsticks", perishable: true, shelf_life: 2, image: "https://www.kochfoods.com/wp-content/uploads/2022/07/GCP-5571245034700800.jpg", category: "meat")
m6 = Ingredient.create(name: "Chicken Legs", perishable: true, shelf_life: 2, image: "https://www.kochfoods.com/wp-content/uploads/2022/07/GCP-4785298449891328.jpg", category: "meat")
m7 = Ingredient.create(name: "Chuck Steak", perishable: true, shelf_life: 4, image: "https://cdn.sanity.io/images/p6oh2x2n/production/ca1268ce0beb13e2d47a54f2f0d37515fabac224-1400x854.jpg?w=800&h=488&fit=crop", category: "meat")
m8 = Ingredient.create(name: "Filet Mignon", perishable: true, shelf_life: 4, image: "https://www.lobels.com/images/thumbs/0002289_usda-prime-filet-mignon.jpeg", category: "meat")
m9 = Ingredient.create(name: "Sirloin Steak", perishable: true, shelf_life: 4, image: "https://img.freepik.com/premium-photo/sirloin-steak-raw_538646-252.jpg?w=2000", category: "meat")
m10 = Ingredient.create(name: "Rump Steak", perishable: true, shelf_life: 4, image: "https://media.istockphoto.com/id/1352036514/photo/raw-ancho-meat-ready-to-roast-on-a-wooden-cutting-board.jpg?s=612x612&w=0&k=20&c=C1aSDmTzxrfm-gNyGmM-4LEhDN90_AjI8fIp1jzCi_I=", category: "meat")
m11 = Ingredient.create(name: "Rib Steak", perishable: true, shelf_life: 4, image: "https://as1.ftcdn.net/v2/jpg/02/43/37/86/1000_F_243378624_8XeZu8uqHPo9XqDN2cgABPnzO4NhMJFL.jpg", category: "meat")
m12 = Ingredient.create(name: "Hanger Steak", perishable: true, shelf_life: 4, image: "https://www.mashed.com/img/gallery/everything-you-need-to-know-about-hanger-steak/intro-1621892756.jpg", category: "meat")
m13 = Ingredient.create(name: "Ground Beef", perishable: true, shelf_life: 2, image: "https://embed.widencdn.net/img/beef/4hh1pywcnj/exact/Grind_Fine_85.psd?keep=c&u=7fueml", category: "meat")
m14 = Ingredient.create(name: "Lamb Leg", perishable: true, shelf_life: 4, image: "https://image.shutterstock.com/image-photo/fresh-raw-meat-leg-young-260nw-336046676.jpg", category: "meat")
m15 = Ingredient.create(name: "Rack of Lamb", perishable: true, shelf_life: 4, image: "https://www.dartagnan.com/on/demandware.static/-/Sites-dartagnan-live-catalog-en/default/dwab4f3957/images/products/FLAFR004-1.jpg", category: "meat")
m16 = Ingredient.create(name: "Lamb Chop", perishable: true, shelf_life: 4, image: "https://t3.ftcdn.net/jpg/04/06/50/38/360_F_406503847_8kfdcW6fU17vHvOzU6KxhuhTCGPA4Fn3.jpg", category: "meat")
m17 = Ingredient.create(name: "Eggs", perishable: true, shelf_life: 30, image: "https://cdn-prod.medicalnewstoday.com/content/images/articles/283/283659/a-basket-of-eggs.jpg")

# Spices
s1 = Ingredient.create(name: "Salt", perishable: false, image: "https://www.washingtonpost.com/rf/image_1484w/2010-2019/WashingtonPost/2015/11/17/Production/LocalLiving/Images/we-salt1119.jpg?t=20170517", category: "spice")
s2 = Ingredient.create(name: "Black Pepper", perishable: false, image: "https://www.spicejungle.com/media/catalog/product/cache/77bee113a8ac4baedd074d0e50f9761e/b/l/black_peppercorns.jpg", category: "spice")
s3 = Ingredient.create(name: "Garlic Powder", perishable: false, image: "https://www.spicejungle.com/media/catalog/product/cache/77bee113a8ac4baedd074d0e50f9761e/r/o/roasted-garlic-powder.jpg", category: "spice")
s4 = Ingredient.create(name: "Thyme", perishable: false, image: "https://insanelygoodrecipes.com/wp-content/uploads/2020/05/Thyme-1024x536.png", category: "spice")
s5 = Ingredient.create(name: "Cinnamon", perishable: false, image: "https://images.immediate.co.uk/production/volatile/sites/30/2016/08/cinnamon-benefits44-724deaf.jpg?quality=90&resize=440,400", category: "spice")
s6 = Ingredient.create(name: "Oregano", perishable: false, image: "https://images-prod.healthline.com/hlcmsresource/images/AN_images/oregano-flakes-spoon-1296x728.jpg", category: "spice")
s7 = Ingredient.create(name: "Rosemary", perishable: false, image: "https://i0.wp.com/post.medicalnewstoday.com/wp-content/uploads/sites/3/2017/12/rosemary-leaves-bound-in-rope-on-wooden-table.jpg?w=1155&h=1541", category: "spice")
s8 = Ingredient.create(name: "Cayenne", perishable: false, image: "https://www.spicejungle.com/media/catalog/product/cache/77bee113a8ac4baedd074d0e50f9761e/g/r/ground_cayenne_pepper.jpg", category: "spice")
s9 = Ingredient.create(name: "Cumin", perishable: false, image: "https://cdn.britannica.com/59/219359-050-662D86EA/Cumin-Spice.jpg", category: "spice")
s10 = Ingredient.create(name: "Nutmeg", perishable: false, image: "https://cdn.britannica.com/77/170777-050-3A754B3D/Nutmeg-seeds-ground-spice.jpg", category: "spice")
s11 = Ingredient.create(name: "Paprika", perishable: false, image: "https://i0.wp.com/images-prod.healthline.com/hlcmsresource/images/AN_images/paprika-benefits-1296x728-feature.jpg?w=1155&h=1528", category: "spice")

# Veggies
v1 = Ingredient.create(name: "Broccoli", perishable: true, shelf_life: 5, image: "https://snaped.fns.usda.gov/sites/default/files/styles/crop_ratio_7_5/public/seasonal-produce/2018-05/broccoli.jpg?h=65b39431&itok=xglOu8vA", category: "vegetable")
v2 = Ingredient.create(name: "Carrots", perishable: true, shelf_life: 24, image: "https://www.jessicagavin.com/wp-content/uploads/2019/02/carrots-7-1200.jpg", category: "vegetable")
v3 = Ingredient.create(name: "Cauliflower", perishable: true, shelf_life: 5, image: "https://post.healthline.com/wp-content/uploads/2020/09/cauliflower-thumb.jpg", category: "vegetable")
v4 = Ingredient.create(name: "Corn", perishable: true, shelf_life: 7, image: "https://www.jessicagavin.com/wp-content/uploads/2019/05/how-to-cook-corn-on-the-cob-8-1200.jpg", category: "vegetable")
v5 = Ingredient.create(name: "Green Beans", perishable: true, shelf_life: 7, image: "https://post.healthline.com/wp-content/uploads/2020/06/green-beans-732x549-thumbnail-732x549.jpg", category: "vegetable")
v6 = Ingredient.create(name: "Cucumber", perishable: true, shelf_life: 14, image: "https://post.healthline.com/wp-content/uploads/2020/09/AN88-Cucumbers-732x549-thumb-1-732x549.jpg", category: "fruit")
v7 = Ingredient.create(name: "Eggplant", perishable: true, shelf_life: 7, image: "https://cdn-prod.medicalnewstoday.com/content/images/articles/279/279359/two-eggplants-on-a-wooden-table.jpg", category: "fruit")
v8 = Ingredient.create(name: "Mushrooms", perishable: true, shelf_life: 10, image: "https://grocycle.com/wp-content/uploads/2022/04/Can-you-eat-raw-mushrooms-cover-pic.jpg", category: "vegetable")
v9 = Ingredient.create(name: "Onion", perishable: true, shelf_life: 45, image: "https://www.simplyrecipes.com/thmb/Oikw9O41IDWOFmuJZQ2bs8dGVB8=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/__opt__aboutcom__coeus__resources__content_migration__simply_recipes__uploads__2009__01__how-to-slice-onion-horiz-a2-1800-1ff872c2194e49169812d2fcbc1f3e6c.jpg", category: "vegetable")
v10 = Ingredient.create(name: "Zucchini", perishable: true, shelf_life: 14, image: "https://www.allrecipes.com/thmb/EsPqP4XkVWoL6MCLFkmU6Gv11TY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-909949580-2000-51a0553f3ee349cdb7b7d3d2fc1e3f0b.jpg", category: "vegetable")
v11 = Ingredient.create(name: "Sweet Potatoes", perishable: true, shelf_life: 28, image: "https://media-cdn.greatbritishchefs.com/media/tyhnbpfa/img26612.jpg", category: "vegetable")
v12 = Ingredient.create(name: "Garlic", perishable: true, shelf_life: 180, image: "https://chopra.brightspotcdn.com/dims4/default/78055c0/2147483647/strip/true/crop/660x371+68+0/resize/1200x675!/quality/90/?url=http%3A%2F%2Fchopra-brightspot.s3.amazonaws.com%2F35%2Ff1%2F39e602ed2bba2359ac95deb5f03a%2Fhealthbenefitsofgarlic.jpg", category: "vegetable")

# Grains
g1 = Ingredient.create(name: "Rice", perishable: false, image: "https://hips.hearstapps.com/vidthumb/images/delish-u-rice-2-1529079587.jpg", category: "grain" )
g2 = Ingredient.create(name: "Pasta", perishable: false, image: "https://foodiosity.com/wp-content/uploads/2022/03/raw-pasta-1.jpg", category: "grain")
g3 = Ingredient.create(name: "Bread", perishable: true, shelf_life: 7, image: "https://www.allrecipes.com/thmb/ofx_MYBukgnrowkbu7VyF4sglCM=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/6788-Amish-White-Bread-ddmfs-1x1.5108-88fb10ef1a964a10b0040aa61b9c1fc7.jpg", category: "grain")

# Dairy
d1 = Ingredient.create(name: "Milk", perishable: true, shelf_life: 14, image: "https://post.healthline.com/wp-content/uploads/2019/11/milk-soy-hemp-almond-non-dairy-1200x628-facebook.jpg", category: "dairy")
d2 = Ingredient.create(name: "Heavy Cream", perishable: true, shelf_life: 30, image: "https://jessicainthekitchen.com/wp-content/uploads/2022/03/Vegan-Creamer-11.jpg", category: "dairy")
d3 = Ingredient.create(name: "Butter", perishable: true, shelf_life: 60, image: "https://cdn.britannica.com/27/122027-050-EAA86783/Butter.jpg", category: "dairy")
d4 = Ingredient.create(name: "Parmesan", perishable: true, shelf_life: 365, image: "https://health.clevelandclinic.org/wp-content/uploads/sites/3/2021/08/ParmesanCheese-471343790-770x533-1-650x428.jpg", category: "dairy")
d5 = Ingredient.create(name: "Mozzarella", perishable: true, shelf_life: 21, image: "https://www.biggerbolderbaking.com/wp-content/uploads/2022/08/How-to-make-Mozzerella-Thumbnail-scaled.jpg", category: "dairy")
d6 = Ingredient.create(name: "Cheddar", perishable: true, shelf_life: 28, image: "https://cdn.cnn.com/cnnnext/dam/assets/200623110902-cheddar-cubes-super-169.jpg", category: "dairy")

# Condiments / Sauces
c1 = Ingredient.create(name: "Mayonnaise", perishable: true, shelf_life: 90, image: "https://therecipecritic.com/wp-content/uploads/2022/05/mayo-scaled.jpg", category: "condiment")
c2 = Ingredient.create(name: "Ketchup", perishable: false, image: "https://www.allrecipes.com/thmb/Bfra16DRB_A-DrMWBMmxxOoyntY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/1060187-homemade-ketchup-Chef-John-1x1-1-d691bb56e4d84aa298f6ac8001d5400c.jpg", category: "condiment")
c3 = Ingredient.create(name: "Mustard", perishable: false, image: "https://leitesculinaria.com/wp-content/uploads/2021/04/homemade-yellow-mustard-fp.jpg", category: "condiment")
c4 = Ingredient.create(name: "Honey Mustard", perishable: false, image: "https://thecozycook.com/wp-content/uploads/2020/12/Honey-Mustard-f.jpg", category: "condiment")
c5 = Ingredient.create(name: "BBQ Sauce", perishable: false, image: "https://www.lecremedelacrumb.com/wp-content/uploads/2021/06/bbq-sauce-5sm-3.jpg", category: "condiment")
c6 = Ingredient.create(name: "Dijon Mustard", perishable: false, image: "https://www.tastingtable.com/img/gallery/the-uncommon-ingredient-originally-used-in-dijon-mustard/l-intro-1657637476.jpg", category: "condiment")