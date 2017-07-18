# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ShopCategory.create("name"=>"candy")
ShopCategory.create("name"=>"drinks")
ShopCategory.create("name"=>"food")
ShopCategory.create("name"=>"etc")
ShopItem.create("name"=>"pocky", "price"=>50, "picture"=>"shop/candy/pocky.png", "shop_category_id"=>1)
ShopItem.create("name"=>"milk candy", "price"=>50, "picture"=>"shop/candy/milkcandy.png", "shop_category_id"=>1)
ShopItem.create("name"=>"mitsuya cider", "price"=>30, "picture"=>"shop/drink/mitsuyacider.png", "shop_category_id"=>2)
ShopItem.create("name"=>"green tea kit kat", "price"=>25, "picture"=>"shop/candy/teakitkat.png", "shop_category_id"=>1)
ShopItem.create("name"=>"sakuma drops", "price"=>27, "picture"=>"shop/candy/sakumadrop.png", "shop_category_id"=>1)
ShopItem.create("name"=>"seasons cafe", "price"=>650, "picture"=>"shop/food/seasonscafe.png", "shop_category_id"=>3)
ShopItem.create("name"=>"churchs chicken", "price"=>180, "picture"=>"shop/food/chicken.gif", "shop_category_id"=>3)
ShopItem.create("name"=>"calpico", "price"=>35, "picture"=>"shop/drink/calpico", "shop_category_id"=>2)
ShopItem.create("name"=>"rilakkuma plush", "price"=>750, "picture"=>"shop/other/rilakkuma", "shop_category_id"=>4)
ShopItem.create("name"=>"hamster plush", "price"=>800, "picture"=>"shop/other/hamster.png", "shop_category_id"=>4)
ShopItem.create("name"=>"corkys", "price"=>1000, "picture"=>"shop/food/corkys.png", "shop_category_id"=>3)
