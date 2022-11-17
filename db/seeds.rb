require 'debug'

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

# Users
u1 = User.create(name: "Chris Witte", username: "critwitt", email: "christopher.t.witte@gmail.com", password: "foodsaver")
u2 = User.create(name: "Winnie the Pooh", username: "poohbear", email: "winnie@disney.com", password: "honey")
u3 = User.create(name: "Guy Fieri", username: "realguy", email: "guy@food.com", password: "flavortown")
u4 = User.create(name: "Bobby Flay", username: "bigbobbyf", email: "bobby@beatbobby.com", password: "beatme")

puts "Users seeded..."

# Meats / Eggs
wholechicken = Ingredient.create(name: "Whole Chicken", perishable: true, shelf_life: 2, image: "https://media.healthyfood.com/wp-content/uploads/2017/03/Ask-the-experts-Raw-chicken.jpg", category: "meat")
chickenthighs = Ingredient.create(name: "Chicken Thighs", perishable: true, shelf_life: 2, image: "https://www.kochfoods.com/wp-content/uploads/2022/07/DA-855830932.jpg", category: "meat")
chickenbreasts = Ingredient.create(name: "Chicken Breasts", perishable: true, shelf_life: 2, image: "https://static.onecms.io/wp-content/uploads/sites/19/2012/08/13/GettyImages-182184170.jpg", category: "meat")
chickenwings = Ingredient.create(name: "Chicken Wings", perishable: true, shelf_life: 2, image: "https://images.squarespace-cdn.com/content/v1/53c42a94e4b0e10af0db5328/1547342578018-OPWWJM7TFMMAPP1K4GL1/Raw+Chicken+Wings.jpg?format=1000w", category: "meat")
chickendrumsticks = Ingredient.create(name: "Chicken Drumsticks", perishable: true, shelf_life: 2, image: "https://www.kochfoods.com/wp-content/uploads/2022/07/GCP-5571245034700800.jpg", category: "meat")
chickenlegs = Ingredient.create(name: "Chicken Legs", perishable: true, shelf_life: 2, image: "https://www.kochfoods.com/wp-content/uploads/2022/07/GCP-4785298449891328.jpg", category: "meat")
chucksteak = Ingredient.create(name: "Chuck Steak", perishable: true, shelf_life: 4, image: "https://cdn.sanity.io/images/p6oh2x2n/production/ca1268ce0beb13e2d47a54f2f0d37515fabac224-1400x854.jpg?w=800&h=488&fit=crop", category: "meat")
filetmignon = Ingredient.create(name: "Filet Mignon", perishable: true, shelf_life: 4, image: "https://www.lobels.com/images/thumbs/0002289_usda-prime-filet-mignon.jpeg", category: "meat")
sirloinsteak = Ingredient.create(name: "Sirloin Steak", perishable: true, shelf_life: 4, image: "https://img.freepik.com/premium-photo/sirloin-steak-raw_538646-252.jpg?w=2000", category: "meat")
rumpsteak = Ingredient.create(name: "Rump Steak", perishable: true, shelf_life: 4, image: "https://media.istockphoto.com/id/1352036514/photo/raw-ancho-meat-ready-to-roast-on-a-wooden-cutting-board.jpg?s=612x612&w=0&k=20&c=C1aSDmTzxrfm-gNyGmM-4LEhDN90_AjI8fIp1jzCi_I=", category: "meat")
ribsteak = Ingredient.create(name: "Rib Steak", perishable: true, shelf_life: 4, image: "https://as1.ftcdn.net/v2/jpg/02/43/37/86/1000_F_243378624_8XeZu8uqHPo9XqDN2cgABPnzO4NhMJFL.jpg", category: "meat")
hangersteak = Ingredient.create(name: "Hanger Steak", perishable: true, shelf_life: 4, image: "https://www.mashed.com/img/gallery/everything-you-need-to-know-about-hanger-steak/intro-1621892756.jpg", category: "meat")
groundbeef = Ingredient.create(name: "Ground Beef", perishable: true, shelf_life: 2, image: "https://embed.widencdn.net/img/beef/4hh1pywcnj/exact/Grind_Fine_85.psd?keep=c&u=7fueml", category: "meat")
lambleg = Ingredient.create(name: "Lamb Leg", perishable: true, shelf_life: 4, image: "https://image.shutterstock.com/image-photo/fresh-raw-meat-leg-young-260nw-336046676.jpg", category: "meat")
rackoflamb = Ingredient.create(name: "Rack of Lamb", perishable: true, shelf_life: 4, image: "https://www.dartagnan.com/on/demandware.static/-/Sites-dartagnan-live-catalog-en/default/dwab4f3957/images/products/FLAFR004-1.jpg", category: "meat")
lambchop = Ingredient.create(name: "Lamb Chop", perishable: true, shelf_life: 4, image: "https://t3.ftcdn.net/jpg/04/06/50/38/360_F_406503847_8kfdcW6fU17vHvOzU6KxhuhTCGPA4Fn3.jpg", category: "meat")
eggs = Ingredient.create(name: "Eggs", perishable: true, shelf_life: 30, image: "https://cdn-prod.medicalnewstoday.com/content/images/articles/283/283659/a-basket-of-eggs.jpg", category: "meat")

# Spices
salt = Ingredient.create(name: "Salt", perishable: false, image: "https://www.washingtonpost.com/rf/image_1484w/2010-2019/WashingtonPost/2015/11/17/Production/LocalLiving/Images/we-salt1119.jpg?t=20170517", category: "spice")
pepper = Ingredient.create(name: "Black Pepper", perishable: false, image: "https://www.spicejungle.com/media/catalog/product/cache/77bee113a8ac4baedd074d0e50f9761e/b/l/black_peppercorns.jpg", category: "spice")
garlicpowder = Ingredient.create(name: "Garlic Powder", perishable: false, image: "https://www.spicejungle.com/media/catalog/product/cache/77bee113a8ac4baedd074d0e50f9761e/r/o/roasted-garlic-powder.jpg", category: "spice")
thyme = Ingredient.create(name: "Thyme", perishable: false, image: "https://insanelygoodrecipes.com/wp-content/uploads/2020/05/Thyme-1024x536.png", category: "spice")
cinnamon = Ingredient.create(name: "Cinnamon", perishable: false, image: "https://images.immediate.co.uk/production/volatile/sites/30/2016/08/cinnamon-benefits44-724deaf.jpg?quality=90&resize=440,400", category: "spice")
oregano = Ingredient.create(name: "Oregano", perishable: false, image: "https://images-prod.healthline.com/hlcmsresource/images/AN_images/oregano-flakes-spoon-1296x728.jpg", category: "spice")
rosemary = Ingredient.create(name: "Rosemary", perishable: false, image: "https://i0.wp.com/post.medicalnewstoday.com/wp-content/uploads/sites/3/2017/12/rosemary-leaves-bound-in-rope-on-wooden-table.jpg?w=1155&h=1541", category: "spice")
cayenne = Ingredient.create(name: "Cayenne", perishable: false, image: "https://www.spicejungle.com/media/catalog/product/cache/77bee113a8ac4baedd074d0e50f9761e/g/r/ground_cayenne_pepper.jpg", category: "spice")
cumin = Ingredient.create(name: "Cumin", perishable: false, image: "https://cdn.britannica.com/59/219359-050-662D86EA/Cumin-Spice.jpg", category: "spice")
nutmeg = Ingredient.create(name: "Nutmeg", perishable: false, image: "https://cdn.britannica.com/77/170777-050-3A754B3D/Nutmeg-seeds-ground-spice.jpg", category: "spice")
paprika = Ingredient.create(name: "Paprika", perishable: false, image: "https://i0.wp.com/images-prod.healthline.com/hlcmsresource/images/AN_images/paprika-benefits-1296x728-feature.jpg?w=1155&h=1528", category: "spice")
onionpowder = Ingredient.create(name: "Onion Powder", perishable: false, image: "https://cdn.shopify.com/s/files/1/1322/9789/products/smokedgranulatedonion_large.jpg?v=1600714120", category: "spice")
redpepperflakes = Ingredient.create(name: "Red Pepper Flakes", perishable: false, image: "https://assets.epicurious.com/photos/571fb92640fd1d583e17288b/16:9/w_2560%2Cc_limit/shutterstock_397606069.jpg", category: "spice")
parsley = Ingredient.create(name: "Parsley", perishable: false, image: "https://cdn.shopify.com/s/files/1/0257/4565/3811/products/042622_T118630_202016_Bonnie_ItalianParsley_ALT_01.jpg?v=1653419787", category: "spice")

# Veggies
broccoli = Ingredient.create(name: "Broccoli", perishable: true, shelf_life: 5, image: "https://snaped.fns.usda.gov/sites/default/files/styles/crop_ratio_7_5/public/seasonal-produce/2018-05/broccoli.jpg?h=65b39431&itok=xglOu8vA", category: "vegetable")
carrots = Ingredient.create(name: "Carrots", perishable: true, shelf_life: 24, image: "https://www.jessicagavin.com/wp-content/uploads/2019/02/carrots-7-1200.jpg", category: "vegetable")
cauliflower = Ingredient.create(name: "Cauliflower", perishable: true, shelf_life: 5, image: "https://post.healthline.com/wp-content/uploads/2020/09/cauliflower-thumb.jpg", category: "vegetable")
corn = Ingredient.create(name: "Corn", perishable: true, shelf_life: 7, image: "https://www.jessicagavin.com/wp-content/uploads/2019/05/how-to-cook-corn-on-the-cob-8-1200.jpg", category: "vegetable")
greenbeans = Ingredient.create(name: "Green Beans", perishable: true, shelf_life: 7, image: "https://post.healthline.com/wp-content/uploads/2020/06/green-beans-732x549-thumbnail-732x549.jpg", category: "vegetable")
cucumber = Ingredient.create(name: "Cucumber", perishable: true, shelf_life: 14, image: "https://post.healthline.com/wp-content/uploads/2020/09/AN88-Cucumbers-732x549-thumb-1-732x549.jpg", category: "fruit")
eggplant = Ingredient.create(name: "Eggplant", perishable: true, shelf_life: 7, image: "https://cdn-prod.medicalnewstoday.com/content/images/articles/279/279359/two-eggplants-on-a-wooden-table.jpg", category: "fruit")
mushrooms = Ingredient.create(name: "Mushrooms", perishable: true, shelf_life: 10, image: "https://grocycle.com/wp-content/uploads/2022/04/Can-you-eat-raw-mushrooms-cover-pic.jpg", category: "vegetable")
onion = Ingredient.create(name: "Onion", perishable: true, shelf_life: 45, image: "https://www.simplyrecipes.com/thmb/Oikw9O41IDWOFmuJZQ2bs8dGVB8=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/__opt__aboutcom__coeus__resources__content_migration__simply_recipes__uploads__2009__01__how-to-slice-onion-horiz-a2-1800-1ff872c2194e49169812d2fcbc1f3e6c.jpg", category: "vegetable")
zucchini = Ingredient.create(name: "Zucchini", perishable: true, shelf_life: 14, image: "https://www.allrecipes.com/thmb/EsPqP4XkVWoL6MCLFkmU6Gv11TY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/GettyImages-909949580-2000-51a0553f3ee349cdb7b7d3d2fc1e3f0b.jpg", category: "vegetable")
sweetpotatoes = Ingredient.create(name: "Sweet Potatoes", perishable: true, shelf_life: 28, image: "https://media-cdn.greatbritishchefs.com/media/tyhnbpfa/img26612.jpg", category: "vegetable")
garlic = Ingredient.create(name: "Garlic", perishable: true, shelf_life: 180, image: "https://chopra.brightspotcdn.com/dims4/default/78055c0/2147483647/strip/true/crop/660x371+68+0/resize/1200x675!/quality/90/?url=http%3A%2F%2Fchopra-brightspot.s3.amazonaws.com%2F35%2Ff1%2F39e602ed2bba2359ac95deb5f03a%2Fhealthbenefitsofgarlic.jpg", category: "vegetable")
bellpepper = Ingredient.create(name: "Bell Pepper", perishable: true, shelf_life: 10, image: "https://hosstools.com/wp-content/uploads/2020/10/mini-belle-pepper-mix.jpg", category: "vegetable")
tomatoes = Ingredient.create(name: "Tomatoes", perishable: true, shelf_life: 3, image: "https://post.healthline.com/wp-content/uploads/2020/09/AN313-Tomatoes-732x549-Thumb-732x549.jpg", category: "vegetable")
chilepepper = Ingredient.create(name: "Chile Pepper", perishable: true, shelf_life: 17, image: "https://www.tastingtable.com/img/gallery/20-types-of-peppers-that-will-set-your-mouth-on-fire/intro-1645288845.jpg", category: "vegetable")

# Grains
rice = Ingredient.create(name: "Rice", perishable: false, image: "https://hips.hearstapps.com/vidthumb/images/delish-u-rice-2-1529079587.jpg", category: "grain" )
pasta = Ingredient.create(name: "Pasta", perishable: false, image: "https://foodiosity.com/wp-content/uploads/2022/03/raw-pasta-1.jpg", category: "grain")
bread = Ingredient.create(name: "Bread", perishable: true, shelf_life: 7, image: "https://www.allrecipes.com/thmb/ofx_MYBukgnrowkbu7VyF4sglCM=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/6788-Amish-White-Bread-ddmfs-1x1.5108-88fb10ef1a964a10b0040aa61b9c1fc7.jpg", category: "grain")
hamburgerbuns = Ingredient.create(name: "Hamburger Buns", perishable: true, shelf_life: 7, image: "https://www.rockrecipes.com/wp-content/uploads/2021/06/The-Best-Hamburger-Buns-Recipe-close-up-photo-of-one-bun-split-in-half-horisontally.jpg", category: "grain")
tortillas = Ingredient.create(name: "Tortillas", perishable: true, shelf_life: 28, image: "https://thecafesucrefarine.com/wp-content/uploads/Homemade-Flour-Tortillas-1.jpg")

# Dairy
milk = Ingredient.create(name: "Milk", perishable: true, shelf_life: 14, image: "https://post.healthline.com/wp-content/uploads/2019/11/milk-soy-hemp-almond-non-dairy-1200x628-facebook.jpg", category: "dairy")
heavycream = Ingredient.create(name: "Heavy Cream", perishable: true, shelf_life: 30, image: "https://jessicainthekitchen.com/wp-content/uploads/2022/03/Vegan-Creamer-11.jpg", category: "dairy")
butter = Ingredient.create(name: "Butter", perishable: true, shelf_life: 60, image: "https://cdn.britannica.com/27/122027-050-EAA86783/Butter.jpg", category: "dairy")
parmesan = Ingredient.create(name: "Parmesan", perishable: true, shelf_life: 365, image: "https://health.clevelandclinic.org/wp-content/uploads/sites/3/2021/08/ParmesanCheese-471343790-770x533-1-650x428.jpg", category: "dairy")
mozzerella = Ingredient.create(name: "Mozzarella", perishable: true, shelf_life: 21, image: "https://www.biggerbolderbaking.com/wp-content/uploads/2022/08/How-to-make-Mozzerella-Thumbnail-scaled.jpg", category: "dairy")
cheddar = Ingredient.create(name: "Cheddar", perishable: true, shelf_life: 28, image: "https://cdn.cnn.com/cnnnext/dam/assets/200623110902-cheddar-cubes-super-169.jpg", category: "dairy")
parmigianoreggiano = Ingredient.create(name: "Parmigiano-Reggiano", perishable: true, shelf_life: 365, image: "https://m.media-amazon.com/images/I/41+yCWdr8xL.jpg", category: "dairy")
monterey = Ingredient.create(name: "Monterey Jack Cheese", perishable: true, shelf_life: 180, image: "https://store.pagelsponderosa.com/wp-content/uploads/2020/08/Monterey-Jack-Block-resized-scaled.jpg", category: "dairy")

# Condiments / Sauces / Oils
mayo = Ingredient.create(name: "Mayonnaise", perishable: true, shelf_life: 90, image: "https://therecipecritic.com/wp-content/uploads/2022/05/mayo-scaled.jpg", category: "condiment")
ketchup = Ingredient.create(name: "Ketchup", perishable: false, image: "https://www.allrecipes.com/thmb/Bfra16DRB_A-DrMWBMmxxOoyntY=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/1060187-homemade-ketchup-Chef-John-1x1-1-d691bb56e4d84aa298f6ac8001d5400c.jpg", category: "condiment")
mustard = Ingredient.create(name: "Mustard", perishable: false, image: "https://leitesculinaria.com/wp-content/uploads/2021/04/homemade-yellow-mustard-fp.jpg", category: "condiment")
honeymustard = Ingredient.create(name: "Honey Mustard", perishable: false, image: "https://thecozycook.com/wp-content/uploads/2020/12/Honey-Mustard-f.jpg", category: "condiment")
bbq = Ingredient.create(name: "BBQ Sauce", perishable: false, image: "https://www.lecremedelacrumb.com/wp-content/uploads/2021/06/bbq-sauce-5sm-3.jpg", category: "condiment")
dijon = Ingredient.create(name: "Dijon Mustard", perishable: false, image: "https://www.tastingtable.com/img/gallery/the-uncommon-ingredient-originally-used-in-dijon-mustard/l-intro-1657637476.jpg", category: "condiment")
oliveoil = Ingredient.create(name: "Olive Oil", perishable: false, image: "https://images.everydayhealth.com/images/diet-nutrition/olive-oil-nutrition-facts-benefits-for-skin-and-health-side-effects-more-722x406.jpg", category: "condiment")
tomatosauce = Ingredient.create(name: "Tomato Sauce", perishable: false, image: "https://www.seriouseats.com/thmb/_nurCIpYhImZoScla4LZazMEP1U=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats.com__images__2014__09__20140919-easy-italian-american-red-sauce-vicky-wasik-20-e0ecaa3d8b0d443f8dcd8764df7926c2.jpg", category: "condiment")
soysauce = Ingredient.create(name: "Soy Sauce", perishable: false, image: "https://assets.epicurious.com/photos/561fc9ce53de6d0d5cdef3c8/master/pass/soy-sauce.jpg", category: "condiment")
honey = Ingredient.create(name: "Honey", perishable: false, image: "https://i0.wp.com/post.healthline.com/wp-content/uploads/2021/04/honey-1296x728-header.jpg?w=1155&h=1528", category: "condiment")

# Baking
water = Ingredient.create(name: "Water", perishable: false, image: "https://cdn.shopify.com/s/files/1/2007/8935/articles/what-is-tap-water_1024x.png?v=1552331561", category: "baking")
sugar = Ingredient.create(name: "Sugar", perishable: false, image: "https://www.tasteofhome.com/wp-content/uploads/2019/11/sugar-shutterstock_615908132.jpg?fit=700,800", category: "baking")
brownsugar = Ingredient.create(name: "Brown Sugar", perishable: false, image: "https://celebratingsweets.com/wp-content/uploads/2021/01/Brown-Sugar-Substitute-1-2.jpg", category: "baking")
flour = Ingredient.create(name: "Flour", perishable: false, image: "https://www.unlockfood.ca/EatRightOntario/media/Website-images-resized/All-about-grain-flours-resized.jpg", category: "baking")
vanillaextract = Ingredient.create(name: "Vanilla Extract", perishable: false, image: "https://cdn.shopify.com/s/files/1/0148/1945/9126/articles/Vanilla_Extract_720x.jpg?v=1590182129", category: "baking")
bakingpowder = Ingredient.create(name: "Baking Powder", perishable: false, image: "https://www.foodandwine.com/thmb/eNyX0qttvHM_SLeBCIzElL2URXc=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/Baking-Soda-vs-Baking-Powder-FT-BLOG0622-f9d1ee8b0b854866944881eb4d25b594.jpg", category: "baking")

puts "Ingredients seeded..."

# Perishables

p1 = Perishable.create(user_id: u1.id, ingredient_id: chickenbreasts.id, date_entered: "15/11/2022")
p2 = Perishable.create(user_id: u1.id, ingredient_id: salt.id, date_entered: "15/11/2022")
p3 = Perishable.create(user_id: u1.id, ingredient_id: pepper.id, date_entered: "15/11/2022")
p4 = Perishable.create(user_id: u1.id, ingredient_id: garlicpowder.id, date_entered: "15/11/2022")
p5 = Perishable.create(user_id: u1.id, ingredient_id: thyme.id, date_entered: "15/11/2022")
p6 = Perishable.create(user_id: u1.id, ingredient_id: cinnamon.id, date_entered: "15/11/2022")
p7 = Perishable.create(user_id: u1.id, ingredient_id: oregano.id, date_entered: "15/11/2022")
p8 = Perishable.create(user_id: u1.id, ingredient_id: rosemary.id, date_entered: "15/11/2022")
p9 = Perishable.create(user_id: u1.id, ingredient_id: cayenne.id, date_entered: "15/11/2022")
p10 = Perishable.create(user_id: u1.id, ingredient_id: cumin.id, date_entered: "15/11/2022")
p15 = Perishable.create(user_id: u1.id, ingredient_id: nutmeg.id, date_entered: "15/11/2022")
p12 = Perishable.create(user_id: u1.id, ingredient_id: paprika.id, date_entered: "15/11/2022")
p15 = Perishable.create(user_id: u1.id, ingredient_id: broccoli.id, date_entered: "15/11/2022")
p11 = Perishable.create(user_id: u1.id, ingredient_id: carrots.id, date_entered: "15/11/2022")
p15 = Perishable.create(user_id: u1.id, ingredient_id: cauliflower.id, date_entered: "15/11/2022")
p16 = Perishable.create(user_id: u1.id, ingredient_id: corn.id, date_entered: "15/11/2022")
p17 = Perishable.create(user_id: u1.id, ingredient_id: greenbeans.id, date_entered: "15/11/2022")
p18 = Perishable.create(user_id: u1.id, ingredient_id: cucumber.id, date_entered: "15/11/2022")
p19 = Perishable.create(user_id: u1.id, ingredient_id: onion.id, date_entered: "15/11/2022")
p20 = Perishable.create(user_id: u1.id, ingredient_id: garlic.id, date_entered: "15/11/2022")
p21 = Perishable.create(user_id: u1.id, ingredient_id: parmesan.id, date_entered: "15/11/2022")
p23 = Perishable.create(user_id: u1.id, ingredient_id: mayo.id, date_entered: "15/11/2022")
p24 = Perishable.create(user_id: u1.id, ingredient_id: ketchup.id, date_entered: "15/11/2022")
p25 = Perishable.create(user_id: u1.id, ingredient_id: oliveoil.id, date_entered: "15/11/2022")
p26 = Perishable.create(user_id: u1.id, ingredient_id: chilepepper.id, date_entered: "15/11/2022")

puts "Perishables seeded..."

# Chakchouka
r1 = Recipe.create(name: "Chakchouka (Shakshouka)", steps: ["Heat olive oil in a skillet over medium heat. Stir in onion, bell pepper, and garlic; cook and stir until vegetables have softened and onion has turned translucent, about 5 minutes.", "Meanwhile, mix together tomatoes, chile pepper, cumin, paprika, and salt in a bowl.", "Stir tomato mixture into onion mixture. Simmer, uncovered, until tomato juices have cooked off, about 10 minutes.", "Make 4 indentations in tomato mixture; crack eggs into indentations. Cover the skillet and cook until eggs are firm but not dry, about 5 minutes."], user_id: u1.id)

r1il1 = IngredientList.create(ingredient_id: oliveoil.id, recipe_id: r1.id, ingredient_amount: 3, unit: "tablespoon")
r1il2 = IngredientList.create(ingredient_id: onion.id, recipe_id: r1.id, ingredient_amount: 1, unit: "cup")
r1il3 = IngredientList.create(ingredient_id: bellpepper.id, recipe_id: r1.id, ingredient_amount: 1, unit: "cup")
r1il4 = IngredientList.create(ingredient_id: garlic.id, recipe_id: r1.id, ingredient_amount: 2, unit: "clove")
r1il5 = IngredientList.create(ingredient_id: tomatoes.id, recipe_id: r1.id, ingredient_amount: 2, unit: "cup")
r1il6 = IngredientList.create(ingredient_id: chilepepper.id, recipe_id: r1.id, ingredient_amount: 1, unit: "individual")
r1il7 = IngredientList.create(ingredient_id: cumin.id, recipe_id: r1.id, ingredient_amount: 1, unit: "teaspoon")
r1il8 = IngredientList.create(ingredient_id: paprika.id, recipe_id: r1.id, ingredient_amount: 1, unit: "teaspoon")
r1il9 = IngredientList.create(ingredient_id: salt.id, recipe_id: r1.id, ingredient_amount: 1, unit: "teaspoon")
r1il10 = IngredientList.create(ingredient_id: eggs.id, recipe_id: r1.id, ingredient_amount: 4, unit: "individual")

# Chicken Thighs
r2 = Recipe.create(name: "Easy Baked Chicken Thighs", steps: ["Preheat the oven to 375 degrees F (190 degrees C).", "Place chicken thighs in a baking dish; season both sides with garlic powder and onion flakes.", "Bake in the preheated oven until no longer pink at the bone and juices run clear, about 30 minutes. An instant-read thermometer inserted into thickest part of thigh, near the bone, should read 165 degrees F (74 degrees C)."], user_id: u2.id)

r2il1 = IngredientList.create(ingredient_id: chickenthighs.id, recipe_id: r2.id, ingredient_amount: 4, unit: "individual")
r2il2 = IngredientList.create(ingredient_id: garlicpowder.id, recipe_id: r2.id, ingredient_amount: 4, unit: "teaspoon")
r2il3 = IngredientList.create(ingredient_id: onionpowder.id, recipe_id: r2.id, ingredient_amount: 4, unit: "teaspoon")

r3 = Recipe.create(name: "Yummy Veggie Omelet", steps: ["Melt 1 tablespoon butter in a medium skillet over medium heat. Cook and stir onion and bell pepper in butter until just tender, 4 to 5 minutes. Transfer vegetables to a bowl, season with 1/4 teaspoon salt, and set aside.", "Beat together eggs, milk, remaining 1/2 teaspoon salt, and pepper in a separate bowl.", "Melt remaining 1 tablespoon butter in the skillet over medium heat; swirl to coat the bottom of the skillet with butter. When butter is bubbly, pour in egg mixture and cook undisturbed until the bottom of eggs begin to set, about 1 minute. Gently lift the edges of omelet with a spatula to let any uncooked egg flow onto the skillet. Continue cooking until the center of omelet starts to look dry, 1 to 2 more minutes.", "Sprinkle cheese over omelet, then spoon vegetable mixture over 1/2 of the omelet. Use a spatula to gently fold omelet over vegetables. Cook until cheese melts to desired consistency, about 1 minute. Slide omelet onto a plate. Cut in half and serve." ], user_id: u3.id)

r3il1 = IngredientList.create(ingredient_id: butter.id, recipe_id: r3.id, ingredient_amount: 2, unit: "tablespoon")
r3il2 = IngredientList.create(ingredient_id: onion.id, recipe_id: r3.id, ingredient_amount: 1, unit: "individiual")
r3il3 = IngredientList.create(ingredient_id: bellpepper.id, recipe_id: r3.id, ingredient_amount: 1, unit: "individual")
r3il4 = IngredientList.create(ingredient_id: salt.id, recipe_id: r3.id, ingredient_amount: 1, unit: "teaspoon")
r3il5 = IngredientList.create(ingredient_id: eggs.id, recipe_id: r3.id, ingredient_amount: 4, unit: "individual")
r3il6 = IngredientList.create(ingredient_id: milk.id, recipe_id: r3.id, ingredient_amount: 2, unit: "tablespoon")
r3il7 = IngredientList.create(ingredient_id: pepper.id, recipe_id: r3.id, ingredient_amount: 1, unit: "pinch")
r3il8 = IngredientList.create(ingredient_id: cheddar.id, recipe_id: r3.id, ingredient_amount: 2, unit: "ounce")

r4 = Recipe.create(name: "Sloppy Joes", steps: ["Heat a large skillet over medium heat. Cook and stir lean ground beef in the hot skillet until some of the fat starts to render, 3 to 4 minutes. Add onion and bell pepper; continue to cook until vegetables have softened and beef is cooked through, 3 to 5 more minutes.", "Stir in ketchup, brown sugar, mustard, and garlic powder; season with salt and pepper. Reduce heat to low and simmer for 20 to 30 minutes.", "Divide meat mixture evenly among hamburger buns."], user_id: u4.id)

r4il1 = IngredientList.create(ingredient_id: groundbeef.id, recipe_id: r4.id, ingredient_amount: 1, unit: "pound")
r4il2 = IngredientList.create(ingredient_id: onion.id, recipe_id: r4.id, ingredient_amount: 0.25, unit: "cup")
r4il3 = IngredientList.create(ingredient_id: bellpepper.id, recipe_id: r4.id, ingredient_amount: 0.25, unit: "cup")
r4il4 = IngredientList.create(ingredient_id: ketchup.id, recipe_id: r4.id, ingredient_amount: 0.75, unit: "cup")
r4il5 = IngredientList.create(ingredient_id: brownsugar.id, recipe_id: r4.id, ingredient_amount: 1, unit: "tablespoon")
r4il6 = IngredientList.create(ingredient_id: mustard.id, recipe_id: r4.id, ingredient_amount: 1, unit: "teaspoon")
r4il7 = IngredientList.create(ingredient_id: garlicpowder.id, recipe_id: r4.id, ingredient_amount: 0.5, unit: "teaspoon")
r4il8 = IngredientList.create(ingredient_id: salt.id, recipe_id: r4.id, ingredient_amount: 1, unit: "pinch")
r4il9 = IngredientList.create(ingredient_id: pepper.id, recipe_id: r4.id, ingredient_amount: 1, unit: "pinch")
r4il10 = IngredientList.create(ingredient_id: hamburgerbuns.id, recipe_id: r4.id, ingredient_amount: 6, unit: "individual")

r5 = Recipe.create(name: "The Best Rolled Sugar Cookies", steps: ["Cream together butter and sugar in a large bowl with an electric mixer until smooth. Beat in eggs and vanilla. Stir in flour, baking powder, and salt. Cover, and chill dough for at least 1 hour (or overnight).", "Preheat oven to 400 degrees F (200 degrees C).", "Lightly dust a work surface with flour. Roll out dough to 1/4 to 1/2 inch thickness. Cut into shapes with any cookie cutter. Place cookies 1 inch apart on ungreased baking sheets.", "Bake in the preheated oven until cookies are lightly browned, 6 to 8 minutes. Carefully transfer cookies to a wire rack and cool completely before decorating."], user_id: u1.id)

r5il1 = IngredientList.create(ingredient_id: butter.id, recipe_id: r5.id, ingredient_amount: 1.5, unit: "cups")
r5il2 = IngredientList.create(ingredient_id: sugar.id, recipe_id: r5.id, ingredient_amount: 2, unit: "cup")
r5il3 = IngredientList.create(ingredient_id: eggs.id, recipe_id: r5.id, ingredient_amount: 4, unit: "individual")
r5il4 = IngredientList.create(ingredient_id: vanillaextract.id, recipe_id: r5.id, ingredient_amount: 1, unit: "teaspoon")
r5il5 = IngredientList.create(ingredient_id: flour.id, recipe_id: r5.id, ingredient_amount: 5, unit: "cup")
r5il6 = IngredientList.create(ingredient_id: bakingpowder.id, recipe_id: r5.id, ingredient_amount: 2, unit: "teaspoon")
r5il7 = IngredientList.create(ingredient_id: salt.id, recipe_id: r5.id, ingredient_amount: 1, unit: "teaspoon")

r6 = Recipe.create(name: "Spaghetti Aglio e Olio", steps: ["Bring a large pot of lightly salted water to a boil. Cook spaghetti in the boiling water, stirring occasionally until cooked through but firm to the bite, about 10 to 12 minutes. Drain and transfer to a pasta bowl.", "While the pasta is cooking, combine olive oil and garlic in a cold skillet. Cook over medium heat to slowly toast garlic, about 10 minutes. Reduce heat to medium-low when olive oil begins to bubble. Cook and stir until garlic is golden brown, about another 5 minutes. Remove from heat.", "Stir red pepper flakes, salt, and black pepper into pasta. Pour in hot olive oil and garlic, and sprinkle on Italian parsley and half of the Parmigiano-Reggiano cheese; toss until combined.", "Serve pasta topped with the remaining Parmigiano-Reggiano cheese."], user_id: u2.id)

r6il1 = IngredientList.create(ingredient_id: pasta.id, recipe_id: r6.id, ingredient_amount: 1, unit: "pound")
r6il2 = IngredientList.create(ingredient_id: oliveoil.id, recipe_id: r6.id, ingredient_amount: 0.5, unit: "cup")
r6il3 = IngredientList.create(ingredient_id: garlic.id, recipe_id: r6.id, ingredient_amount: 6, unit: "clove")
r6il4 = IngredientList.create(ingredient_id: redpepperflakes.id, recipe_id: r6.id, ingredient_amount: 1, unit: "pinch")
r6il5 = IngredientList.create(ingredient_id: salt.id, recipe_id: r6.id, ingredient_amount: 1, unit: "pinch")
r6il6 = IngredientList.create(ingredient_id: pepper.id, recipe_id: r6.id, ingredient_amount: 1, unit: "pinch")
r6il7 = IngredientList.create(ingredient_id: parsley.id, recipe_id: r6.id, ingredient_amount: 0.25, unit: "cup")
r6il8 = IngredientList.create(ingredient_id: parmigianoreggiano.id, recipe_id: r6.id, ingredient_amount: 1, unit: "cup")

r7 = Recipe.create(name: "Chilaquiles II", steps: ["In a large, heavy skillet, heat the oil to 350 degrees F (175 degrees C). Carefully stir in the onion and tortilla strips. Fry until tortilla strips are crisp and golden brown. Remove from heat, and drain on paper towels. Drain the skillet, leaving only a thin residue of oil.", "Over medium heat, return tortillas to the skillet, and stir in the eggs. Season with salt. Cook and stir until eggs are firm.", "Mix Mexican style hot tomato sauce and water into the skillet. Reduce heat, and simmer until thickened, about 10 minutes. Top with cheese. Continue cooking until cheese has melted."], user_id: u3.id)

r7il1 = IngredientList.create(ingredient_id: oliveoil.id, recipe_id: r7.id, ingredient_amount: 2, unit: "cup")
r7il2 = IngredientList.create(ingredient_id: onion.id, recipe_id: r7.id, ingredient_amount: 0.25, unit: "cup")
r7il3 = IngredientList.create(ingredient_id: tortillas.id, recipe_id: r7.id, ingredient_amount: 30, unit: "strips")
r7il4 = IngredientList.create(ingredient_id: eggs.id, recipe_id: r7.id, ingredient_amount: 6, unit: "individual")
r7il5 = IngredientList.create(ingredient_id: salt.id, recipe_id: r7.id, ingredient_amount: 2, unit: "teaspoon")
r7il6 = IngredientList.create(ingredient_id: tomatosauce.id, recipe_id: r7.id, ingredient_amount: 1, unit: "can")
r7il7 = IngredientList.create(ingredient_id: water.id, recipe_id: r7.id, ingredient_amount: 0.5, unit: "cup")
r7il8 = IngredientList.create(ingredient_id: monterey.id, recipe_id: r7.id, ingredient_amount: 0.5, unit: "cup")

r8 = Recipe.create(name: "Waffles", steps: ["Preheat a waffle iron according to manufacturer's instructions.", "Whisk eggs in a large bowl until light and fluffy. Add flour, milk, and vegetable oil and mix to combine. Whisk in sugar, then mix in baking powder, salt, and vanilla just until smooth, being careful not to overmix.", "Spray the preheated waffle iron with nonstick spray. Pour batter onto the hot waffle iron and cook until golden brown and the iron stops steaming, 3 to 5 minutes."], user_id: u4.id)

r8il1 = IngredientList.create(ingredient_id: eggs.id, recipe_id: r8.id, ingredient_amount: 2, unit: "individual")
r8il2 = IngredientList.create(ingredient_id: flour.id, recipe_id: r8.id, ingredient_amount: 2, unit: "cup")
r8il3 = IngredientList.create(ingredient_id: milk.id, recipe_id: r8.id, ingredient_amount: 1.75, unit: "cup")
r8il4 = IngredientList.create(ingredient_id: oliveoil.id, recipe_id: r8.id, ingredient_amount: 0.5, unit: "cup")
r8il5 = IngredientList.create(ingredient_id: sugar.id, recipe_id: r8.id, ingredient_amount: 1, unit: "tablespoon")
r8il6 = IngredientList.create(ingredient_id: bakingpowder.id, recipe_id: r8.id, ingredient_amount: 4, unit: "teaspoon")
r8il7 = IngredientList.create(ingredient_id: salt.id, recipe_id: r8.id, ingredient_amount: 1, unit: "pinch")
r8il8 = IngredientList.create(ingredient_id: vanillaextract.id, recipe_id: r8.id, ingredient_amount: 1, unit: "pinch")

r9 = Recipe.create(name: "Quick Beef Stir-Fry", steps: ["Heat vegetable oil in a large wok or skillet over medium-high heat; cook and stir beef until browned, 3 to 4 minutes. Move beef to the side of the wok and add broccoli, bell pepper, carrots, green onion, and garlic to the center of the wok. Cook and stir vegetables for 2 minutes.", "Stir beef into vegetables and season with soy sauce and sesame seeds. Continue to cook and stir until vegetables are tender, about 2 more minutes."], user_id: u1.id)

r9il1 = IngredientList.create(ingredient_id: oliveoil.id, recipe_id: r9.id, ingredient_amount: 2, unit: "tablespoon")
r9il2 = IngredientList.create(ingredient_id: sirloinsteak.id, recipe_id: r9.id, ingredient_amount: 1, unit: "pound")
r9il3 = IngredientList.create(ingredient_id: broccoli.id, recipe_id: r9.id, ingredient_amount: 1.5, unit: "cup")
r9il4 = IngredientList.create(ingredient_id: bellpepper.id, recipe_id: r9.id, ingredient_amount: 1, unit: "individual")
r9il5 = IngredientList.create(ingredient_id: carrots.id, recipe_id: r9.id, ingredient_amount: 2, unit: "individual")
r9il6 = IngredientList.create(ingredient_id: onion.id, recipe_id: r9.id, ingredient_amount: 1, unit: "individual")
r9il7 = IngredientList.create(ingredient_id: garlic.id, recipe_id: r9.id, ingredient_amount: 1, unit: "teaspoon")
r9il8 = IngredientList.create(ingredient_id: soysauce.id, recipe_id: r9.id, ingredient_amount: 2, unit: "tablespoon")

r10 = Recipe.create(name: "Garlic-Brown Sugar Chicken Thighs", steps: ["Preheat the oven to 400 degrees F (200 degrees C).", "Season chicken thighs with salt and pepper.", "Melt 2 tablespoons butter in a large oven-proof skillet over medium-high heat. Add chicken, skin-side down, and sear until brown, 2 to 3 minutes per side. Remove chicken to a plate.", "Melt remaining 1 tablespoon butter in the skillet, stirring to loosen any browned bits on the bottom. Add garlic; cook and stir until fragrant, about 30 seconds. Stir in brown sugar, honey, oregano, thyme, and basil until well combined. Turn off the heat and return chicken to the skillet, skin-side down.", "Roast in the preheated oven until chicken is no longer pink at the bone and the juices run clear, 25 to 40 minutes. An instant-read thermometer inserted near the bone should read 165 degrees F (74 degrees C).", "Drizzle pan sauce over chicken thighs when serving."], user_id: u2.id)

r10il1 = IngredientList.create(ingredient_id: chickenthighs.id, recipe_id: r10.id, ingredient_amount: 8, unit: "individual")
r10il2 = IngredientList.create(ingredient_id: salt.id, recipe_id: r10.id, ingredient_amount: 1, unit: "pinch")
r10il3 = IngredientList.create(ingredient_id: pepper.id, recipe_id: r10.id, ingredient_amount: 1, unit: "pinch")
r10il4 = IngredientList.create(ingredient_id: butter.id, recipe_id: r10.id, ingredient_amount: 3, unit: "tablespoon")
r10il5 = IngredientList.create(ingredient_id: garlic.id, recipe_id: r10.id, ingredient_amount: 4, unit: "clove")
r10il6 = IngredientList.create(ingredient_id: brownsugar.id, recipe_id: r10.id, ingredient_amount: 0.25, unit: "cup")
r10il7 = IngredientList.create(ingredient_id: honey.id, recipe_id: r10.id, ingredient_amount: 1, unit: "tablespoon")
r10il8 = IngredientList.create(ingredient_id: oregano.id, recipe_id: r10.id, ingredient_amount: 0.5, unit: "teaspoon")
r10il9 = IngredientList.create(ingredient_id: thyme.id, recipe_id: r10.id, ingredient_amount: 0.25, unit: "teaspoon")

# r11 = Recipe.create(name: "", steps: , user_id: u3.id)

# r11il1 = IngredientList.create(ingredient_id: c7.id, recipe_id: r11.id, ingredient_amount: 3, unit: "tablespoon")
# r11il2 = IngredientList.create(ingredient_id: v9.id, recipe_id: r11.id, ingredient_amount: 1.33, unit: "cup")
# r11il3 = IngredientList.create(ingredient_id: v13.id, recipe_id: r11.id, ingredient_amount: 1, unit: "cup")
# r11il4 = IngredientList.create(ingredient_id: v12.id, recipe_id: r11.id, ingredient_amount: 2, unit: "clove")
# r11il5 = IngredientList.create(ingredient_id: v14.id, recipe_id: r11.id, ingredient_amount: 2.5, unit: "cup")
# r11il6 = IngredientList.create(ingredient_id: v15.id, recipe_id: r11.id, ingredient_amount: 1, unit: "individual")
# r11il7 = IngredientList.create(ingredient_id: s9.id, recipe_id: r11.id, ingredient_amount: 1, unit: "teaspoon")
# r11il8 = IngredientList.create(ingredient_id: s11.id, recipe_id: r11.id, ingredient_amount: 1, unit: "teaspoon")
# r11il9 = IngredientList.create(ingredient_id: s1.id, recipe_id: r11.id, ingredient_amount: 1, unit: "teaspoon")
# r11il10 = IngredientList.create(ingredient_id: m17.id, recipe_id: r11.id, ingredient_amount: 4, unit: "individual")

# r12 = Recipe.create(name: "", steps: , user_id: u4.id)

# r12il1 = IngredientList.create(ingredient_id: c7.id, recipe_id: r12.id, ingredient_amount: 3, unit: "tablespoon")
# r12il2 = IngredientList.create(ingredient_id: v9.id, recipe_id: r12.id, ingredient_amount: 1.33, unit: "cup")
# r12il3 = IngredientList.create(ingredient_id: v13.id, recipe_id: r12.id, ingredient_amount: 1, unit: "cup")
# r12il4 = IngredientList.create(ingredient_id: v12.id, recipe_id: r12.id, ingredient_amount: 2, unit: "clove")
# r12il5 = IngredientList.create(ingredient_id: v14.id, recipe_id: r12.id, ingredient_amount: 2.5, unit: "cup")
# r12il6 = IngredientList.create(ingredient_id: v15.id, recipe_id: r12.id, ingredient_amount: 1, unit: "individual")
# r12il7 = IngredientList.create(ingredient_id: s9.id, recipe_id: r12.id, ingredient_amount: 1, unit: "teaspoon")
# r12il8 = IngredientList.create(ingredient_id: s11.id, recipe_id: r12.id, ingredient_amount: 1, unit: "teaspoon")
# r12il9 = IngredientList.create(ingredient_id: s1.id, recipe_id: r12.id, ingredient_amount: 1, unit: "teaspoon")
# r12il10 = IngredientList.create(ingredient_id: m17.id, recipe_id: r12.id, ingredient_amount: 4, unit: "individual")

# r13 = Recipe.create(name: "", steps: , user_id: u1.id)

# r13il1 = IngredientList.create(ingredient_id: c7.id, recipe_id: r13.id, ingredient_amount: 3, unit: "tablespoon")
# r13il2 = IngredientList.create(ingredient_id: v9.id, recipe_id: r13.id, ingredient_amount: 1.33, unit: "cup")
# r13il3 = IngredientList.create(ingredient_id: v13.id, recipe_id: r13.id, ingredient_amount: 1, unit: "cup")
# r13il4 = IngredientList.create(ingredient_id: v12.id, recipe_id: r13.id, ingredient_amount: 2, unit: "clove")
# r13il5 = IngredientList.create(ingredient_id: v14.id, recipe_id: r13.id, ingredient_amount: 2.5, unit: "cup")
# r13il6 = IngredientList.create(ingredient_id: v15.id, recipe_id: r13.id, ingredient_amount: 1, unit: "individual")
# r13il7 = IngredientList.create(ingredient_id: s9.id, recipe_id: r13.id, ingredient_amount: 1, unit: "teaspoon")
# r13il8 = IngredientList.create(ingredient_id: s11.id, recipe_id: r13.id, ingredient_amount: 1, unit: "teaspoon")
# r13il9 = IngredientList.create(ingredient_id: s1.id, recipe_id: r13.id, ingredient_amount: 1, unit: "teaspoon")
# r13il10 = IngredientList.create(ingredient_id: m17.id, recipe_id: r13.id, ingredient_amount: 4, unit: "individual")

# r14 = Recipe.create(name: "", steps: , user_id: u2.id)

# r14il1 = IngredientList.create(ingredient_id: c7.id, recipe_id: r14.id, ingredient_amount: 3, unit: "tablespoon")
# r14il2 = IngredientList.create(ingredient_id: v9.id, recipe_id: r14.id, ingredient_amount: 1.33, unit: "cup")
# r14il3 = IngredientList.create(ingredient_id: v13.id, recipe_id: r14.id, ingredient_amount: 1, unit: "cup")
# r14il4 = IngredientList.create(ingredient_id: v12.id, recipe_id: r14.id, ingredient_amount: 2, unit: "clove")
# r14il5 = IngredientList.create(ingredient_id: v14.id, recipe_id: r14.id, ingredient_amount: 2.5, unit: "cup")
# r14il6 = IngredientList.create(ingredient_id: v15.id, recipe_id: r14.id, ingredient_amount: 1, unit: "individual")
# r14il7 = IngredientList.create(ingredient_id: s9.id, recipe_id: r14.id, ingredient_amount: 1, unit: "teaspoon")
# r14il8 = IngredientList.create(ingredient_id: s11.id, recipe_id: r14.id, ingredient_amount: 1, unit: "teaspoon")
# r14il9 = IngredientList.create(ingredient_id: s1.id, recipe_id: r14.id, ingredient_amount: 1, unit: "teaspoon")
# r14il10 = IngredientList.create(ingredient_id: m17.id, recipe_id: r14.id, ingredient_amount: 4, unit: "individual")

# r15 = Recipe.create(name: "", steps: , user_id: u3.id)

# r15il1 = IngredientList.create(ingredient_id: c7.id, recipe_id: r15.id, ingredient_amount: 3, unit: "tablespoon")
# r15il2 = IngredientList.create(ingredient_id: v9.id, recipe_id: r15.id, ingredient_amount: 1.33, unit: "cup")
# r15il3 = IngredientList.create(ingredient_id: v13.id, recipe_id: r15.id, ingredient_amount: 1, unit: "cup")
# r15il4 = IngredientList.create(ingredient_id: v12.id, recipe_id: r15.id, ingredient_amount: 2, unit: "clove")
# r15il5 = IngredientList.create(ingredient_id: v14.id, recipe_id: r15.id, ingredient_amount: 2.5, unit: "cup")
# r15il6 = IngredientList.create(ingredient_id: v15.id, recipe_id: r15.id, ingredient_amount: 1, unit: "individual")
# r15il7 = IngredientList.create(ingredient_id: s9.id, recipe_id: r15.id, ingredient_amount: 1, unit: "teaspoon")
# r15il8 = IngredientList.create(ingredient_id: s11.id, recipe_id: r15.id, ingredient_amount: 1, unit: "teaspoon")
# r15il9 = IngredientList.create(ingredient_id: s1.id, recipe_id: r15.id, ingredient_amount: 1, unit: "teaspoon")
# r15il10 = IngredientList.create(ingredient_id: m17.id, recipe_id: r15.id, ingredient_amount: 4, unit: "individual")

# r16 = Recipe.create(name: "", steps: , user_id: u4.id)

# r16il1 = IngredientList.create(ingredient_id: c7.id, recipe_id: r16.id, ingredient_amount: 3, unit: "tablespoon")
# r16il2 = IngredientList.create(ingredient_id: v9.id, recipe_id: r16.id, ingredient_amount: 1.33, unit: "cup")
# r16il3 = IngredientList.create(ingredient_id: v13.id, recipe_id: r16.id, ingredient_amount: 1, unit: "cup")
# r16il4 = IngredientList.create(ingredient_id: v12.id, recipe_id: r16.id, ingredient_amount: 2, unit: "clove")
# r16il5 = IngredientList.create(ingredient_id: v14.id, recipe_id: r16.id, ingredient_amount: 2.5, unit: "cup")
# r16il6 = IngredientList.create(ingredient_id: v15.id, recipe_id: r16.id, ingredient_amount: 1, unit: "individual")
# r16il7 = IngredientList.create(ingredient_id: s9.id, recipe_id: r16.id, ingredient_amount: 1, unit: "teaspoon")
# r16il8 = IngredientList.create(ingredient_id: s11.id, recipe_id: r16.id, ingredient_amount: 1, unit: "teaspoon")
# r16il9 = IngredientList.create(ingredient_id: s1.id, recipe_id: r16.id, ingredient_amount: 1, unit: "teaspoon")
# r16il10 = IngredientList.create(ingredient_id: m17.id, recipe_id: r16.id, ingredient_amount: 4, unit: "individual")

puts "Recipes seeded..."