# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Initialize Admin user
if User.find_by(email: "admin@test.com").nil?
  u = User.new
  u.email = "admin@test.com"
  u.password = "123456"
  u.password_confirmation = "123456"
  u.is_admin = true
  u.save
  puts "Admin已经建好了， 账号为#{u.email}, 密码为#{u.password}"
else
  puts "Admin已经建立过了，脚本跳过此步骤。"
end





# Initialize Product method1

f_title = ["clothes1", "clothes2", "clothes3", "clothes4", "clothes5", "clothes6"]
f_images = ["http://wx3.sinaimg.cn/mw690/00658JkGgy1ffewfckzsyj30gj0gc401.jpg",
  "http://wx3.sinaimg.cn/mw690/00658JkGgy1ffewfd98o6j30j60gnwg4.jpg",
  "http://wx2.sinaimg.cn/mw690/00658JkGgy1ffewfcz57hj30j20gegmz.jpg",
  "http://wx2.sinaimg.cn/mw690/00658JkGgy1ffewfdsef8j30he0ghmyn.jpg",
  "http://wx3.sinaimg.cn/mw690/00658JkGgy1ffewe1dydsj30g60gm0u2.jpg",
  "http://wx1.sinaimg.cn/mw690/00658JkGgy1ffewfe8gm0j30gu0gzq4j.jpg"]

for i in 0..5 do
  Product.create!(
  title: f_title[i],
  description: "clothes",
  quantity:100,
  price:rand(500..1000),
  image: open(f_images[i]))
end

# Initialize Product method2

Product.create!(title: "碎花连衣裙",
    description: "清新小碎花",
    price: 150,
    quantity: 5,
    image: open("http://ww2.sinaimg.cn/large/006tNbRwgy1ffro1vqugxj30m80m8myx.jpg")
    )

Product.create!(title: "休闲小西装",
    description: "宋茜同款",
    price: 500,
    quantity: 10,
    image: open("http://ww1.sinaimg.cn/large/006tNbRwgy1ffro1xmhybj30et0m8gy6.jpg")
    )
