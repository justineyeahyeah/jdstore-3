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

#f_title = ["clothes1", "clothes2", "clothes3", "clothes4", "clothes5", "clothes6"]
#f_images = ["http://wx3.sinaimg.cn/mw690/00658JkGgy1ffewfckzsyj30gj0gc401.jpg",
#  "http://wx3.sinaimg.cn/mw690/00658JkGgy1ffewfd98o6j30j60gnwg4.jpg",
#  "http://wx2.sinaimg.cn/mw690/00658JkGgy1ffewfcz57hj30j20gegmz.jpg",
#  "http://wx2.sinaimg.cn/mw690/00658JkGgy1ffewfdsef8j30he0ghmyn.jpg",
#  "http://wx3.sinaimg.cn/mw690/00658JkGgy1ffewe1dydsj30g60gm0u2.jpg",
#  "http://wx1.sinaimg.cn/mw690/00658JkGgy1ffewfe8gm0j30gu0gzq4j.jpg"]

#for i in 0..5 do
#  Product.create!(
#  title: f_title[i],
#  description: "clothes",
#  quantity:100,
#  price:rand(500..1000),
#  image: open(f_images[i]))
#end

# Initialize Product method2

Product.create!(title: "我们仨",
    author: "杨绛",
    description: "《我们仨》是一个寻寻觅觅的万里长梦，一个单纯温馨的学者家庭，相守相助，相聚相失！",
    publisher: "生活•读书•新知三联书店",
    publication_date: "2012-09-01",
    pages: 165,
    price: 15,
    quantity: 5,
    is_shelved: true,
    image: open("https://images-cn.ssl-images-amazon.com/images/I/41pi7pBzTcL._SX348_BO1,204,203,200_.jpg")
    )

Product.create!(title: "解忧杂货店",
    author: "东野圭吾",
    description: "不是推理小说，却更扣人心弦，获第7届中央公论文艺奖，中文版销量突破200万册，现代人内心流失的东西，这家杂货店能帮你找回",
    publisher: "南海出版公司",
    publication_date: "2014-09-01",
    pages: 297,
    price: 28,
    quantity: 10,
    is_shelved: true,
    image: open("https://images-cn.ssl-images-amazon.com/images/I/51F6FK4cLGL.jpg")
    )

    Product.create!(title: "白鹿原",
        author: "陈忠实",
        description: "茅盾文学奖获奖作品；插图珍藏精装本",
        publisher: "人民文学出版社",
        publication_date: "2014-10-01",
        pages: 697,
        price: 24,
        quantity: 10,
        image: open("https://images-cn.ssl-images-amazon.com/images/I/51WoT34TG0L.jpg")
        )
