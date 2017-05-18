# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u = User.new
u.email = "admin@test.com"

u.password = "123456"

u.password_confirmation = "123456"

u.is_admin = true
u.save


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
