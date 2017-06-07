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
  u.name = "Justine"
  u.address = "China"
  u.cellphone = "1234567890"
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

Product.create!(title: "Oh, The Places You'll Go!",
    author: " Dr. Seuss ",
    description: "Dr. Seuss’s wonderfully wise Oh, the Places You’ll Go! is the perfect send-off for grads—from nursery school, high school, college, and beyond! From soaring to high heights and seeing great sights to being left in a Lurch on a prickle-ly perch, Dr. Seuss addresses life’s ups and downs with his trademark humorous verse and illustrations, while encouraging readers to find the success that lies within. In a starred review, Booklist notes, “Seuss’s message is simple but never sappy: life may be a ‘Great Balancing Act,’ but through it all ‘There’s fun to be done.’” A perennial favorite and a perfect gift for anyone starting a new phase in their life!",
    publisher: "Random House ",
    publication_date: "January 22, 1990",
    pages: 56,
    price: 10,
    quantity: 5,
    is_shelved: true,
    category_id: 1,
    image: open("http://ww2.sinaimg.cn/large/006tNc79gy1fg4yw93bydj30a10dvq3y.jpg")
    )

Product.create!(title: "Harry Potter and the Cursed Child, Parts 1 & 2, Special Rehearsal Edition Script",
    author: "J.K. Rowling & Jack Thorne",
    description: "The Eighth Story. Nineteen Years Later.

    Based on an original new story by J.K. Rowling, Jack Thorne and John Tiffany, a new play by Jack Thorne, Harry Potter and the Cursed Child is the eighth story in the Harry Potter series and the first official Harry Potter story to be presented on stage. The play will receive its world premiere in London’s West End on July 30, 2016. ",
    publisher: "Arthur A. Levine Books; Special Rehearsal Script ed. edition",
    publication_date: "Jul 31, 2016",
    pages: 320,
    price: 14.99,
    quantity: 10,
    is_shelved: true,
    category_id: 1,
    image: open("http://ww3.sinaimg.cn/large/006tNc79gy1fg4z3eh1zej30970dvwfs.jpg")
    )

    Product.create!(title: "The Hobbit",
    author: "J. R. R. Tolkien",
    description: "A great modern classic and the prelude to The Lord of the Rings.

    Bilbo Baggins is a hobbit who enjoys a comfortable, unambitious life, rarely traveling any farther than his pantry or cellar. But his contentment is disturbed when the wizard Gandalf and a company of dwarves arrive on his doorstep one day to whisk him away on an adventure. They have launched a plot to raid the treasure hoard guarded by Smaug the Magnificent, a large and very dangerous dragon. Bilbo reluctantly joins their quest, unaware that on his journey to the Lonely Mountain he will encounter both a magic ring and a frightening creature known as Gollum.",
    publisher: "Houghton Mifflin Harcourt ",
    publication_date: "September 18, 2012",
    pages: 300,
    price: 16.99,
    quantity: 10,
    category_id: 1,
    image: open("http://ww1.sinaimg.cn/large/006tNc79gy1fg4z68dy9pj30990dwgm7.jpg")
    )

Product.create!(title: "Artemis Fowl: The Opal Deception (Book 4)",
    author: "Eoin Colfer",
    description: "The evil pixie Opal Koboi has spent the last year in a self-induced coma, plotting her revenge on all those who foiled her attempt to destroy the LEPrecon fairy police. And Artemis Fowl is at the top of her list. ",
    publisher: "Disney-Hyperion; Reprint edition",
    publication_date: "July 14, 2009",
    pages: 368,
    price: 9.99,
    quantity: 6.99,
    is_shelved: true,
    category_id: 2,
    image: open("http://ww4.sinaimg.cn/large/006tNc79gy1fg4zdxty6yj317e1rs7dl.jpg")
    )

Product.create!(title: "Principles: Life and Work",
    author: "Ray Dalio",
    description: "Ray Dalio, one of the world’s most successful investors and entrepreneurs, shares the unconventional principles that he’s developed, refined, and used over the past forty years to create unique results in both life and business—and which any person or organization can adopt to help achieve their goals.",
    publisher: "Simon & Schuster",
    publication_date: "September 19, 2017",
    pages: 320,
    price: 14.99,
    quantity: 99,
    is_shelved: true,
    category_id: 2,
    image: open("http://ww1.sinaimg.cn/large/006tNc79gy1fg4zvsdudnj312v1lrjsx.jpg")
    )

Product.create!(title: "The Leadership Pipeline: How to Build the Leadership Powered Company",
    author: " Ram Charan",
    description: "An updated and revised version of the bestselling The Leadership Pipeline – the critical resource for how companies can grow leaders from the inside.",
    publisher: "Jossey-Bass; 2 edition",
    publication_date: "January 11, 2011",
    pages: 352,
    price: 15.99,
    quantity: 99,
    is_shelved: true,
    category_id: 2,
    image: open("http://ww2.sinaimg.cn/large/006tNc79gy1fg50cjfntaj309h0dv0tf.jpg")
    )

Product.create!(title: "Guns, Germs, and Steel: The Fates of Human Societies 1st Edition",
    author: "Jared M. Diamond ",
    description: "In this <artful, informative, and delightful> (William H. McNeill, New York Review of Books) book, Jared Diamond convincingly argues that geographical and environmental factors shaped the modern world. Societies that had had a head start in food production advanced beyond the hunter-gatherer stage, and then developed religion --as well as nasty germs and potent weapons of war --and adventured on sea and land to conquer and decimate preliterate cultures. A major advance in our understanding of human societies, Guns, Germs, and Steel chronicles the way that the modern world came to be and stunningly dismantles racially based theories of human history. Winner of the Pulitzer Prize, the Phi Beta Kappa Award in Science, the Rhone-Poulenc Prize, and the Commonwealth club of California's Gold Medal.",
    publisher: "W. W. Norton & Company; 1st edition",
    publication_date: "April 1, 1999",
    pages: 480,
    price: 9.99,
    quantity: 99,
    is_shelved: true,
    category_id: 3,
    image: open("http://ww1.sinaimg.cn/large/006tNc79gy1fg50mtvav6j30940dvaaw.jpg")
    )

Product.create!(title: "The Black Swan",
    author: "Nassim Nicholas Taleb",
    description: "A black swan is an event, positive or negative, that is deemed improbable yet causes massive consequences. In this groundbreaking and prophetic book, Taleb shows in a playful way that Black Swan events explain almost everything about our world, and yet we—especially the experts—are blind to them.",
    publisher: "Random House Trade Paperbacks; 2 edition",
    publication_date: "May 11, 2010",
    pages: 444,
    price: 10.99,
    quantity: 99,
    is_shelved: true,
    category_id: 3,
    image: open("http://ww3.sinaimg.cn/large/006tNc79gy1fg50r45ysdj30900dvgm5.jpg")
    )

    Product.create!(title: "Crucial Conversations",
        author: "Kerry Patterson",
        description: "The New York Times and Washington Post bestseller that changed the way millions communicate.",
        publisher: "McGraw-Hill Professional Publishing",
        publication_date: "August 19, 2011",
        pages: 272,
        price: 10.99,
        quantity: 99,
        is_shelved: true,
        category_id: 3,
        image: open("http://ww2.sinaimg.cn/large/006tNc79gy1fgcysa0b4mj305c080glw.jpg")
        )


# Initialize category
    Category.create!(name: "Youth")

    Category.create!(name: "History")


    Category.create!(name: "Cognitive Science")
