# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destruction de la DB"
Baby.destroy_all
Comment.destroy_all
Article.destroy_all
Category.destroy_all
Message.destroy_all
Post.destroy_all
ChatRoom.destroy_all
User.destroy_all
Product.destroy_all
Type.destroy_all


User.create(email: "jules@lepapa.club", first_name: "Jules", last_name: "Maregiano", date_of_birth: "26/07/1988", couple_situation: 1, role: 1, password: "123soleil")
User.create(email: "lea@lepapa.club", first_name: "Léa", last_name: "Durand", date_of_birth: "05/12/1992", couple_situation: 1, role: 1, password: "123soleil")
User.create(email: "james@lepapa.club", first_name: "James", last_name: "Lambert", date_of_birth: "05/12/1992", couple_situation: 1, role: 1, password: "123soleil")
User.create(email: "iso@lepapa.club", first_name: "Iso", last_name: "Hajjar", date_of_birth: "05/12/1992", couple_situation: 1, role: 1, password: "123soleil")
20.times do User.create(email: Faker::Internet.email, first_name: Faker::HeyArnold.character, last_name:
Faker::DrWho.specie, date_of_birth: Faker::Date.birthday(18, 65), couple_situation: 1, role: 1, password: "123soleil") end
puts "Users créés"

20.times do Baby.create(name: Faker::RickAndMorty.character, user: User.all.sample, date_of_birth: Faker::Date.birthday(1, 3), height: 55, weight: 9, gender: 1) end

Category.create(name: "Santé")
Category.create(name: "Education")
Category.create(name: "Urgence")
Category.create(name: "Pratique")
Category.create(name: "Couple")
puts "#{Category.all.size} catégories créées"

users = [1, 2]
category = [1, 2, 3, 4, 5]
lorem = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eum, beatae. Consequatur similique eveniet quasi accusamus neque iure beatae repellendus maxime, pariatur suscipit tempore quaerat ex iste esse labore eaque sit? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi repellat aspernatur consectetur autem doloribus corporis sunt placeat odio, delectus, quo fugiat nulla deserunt, voluptas reiciendis rerum facilis perferendis modi at! "


15.times do Article.create(title: Faker::Book.title, content: lorem, category: Category.all.sample, user: User.all.sample) end
puts "#{Article.all.size} articles créés"

ChatRoom.create(name: "Général", photo_url: "http://res.cloudinary.com/zanzibar/image/upload/v1507625860/DeGaulle_small_ogly9a.jpg")
ChatRoom.create(name: "Santé", photo_url: "http://res.cloudinary.com/zanzibar/image/upload/v1507625860/Sante_small_uj3wn3.jpg")
ChatRoom.create(name: "Urgence", photo_url: "http://res.cloudinary.com/zanzibar/image/upload/v1507795856/rsz_danger_hetxjb.jpg")
ChatRoom.create(name: "Pratique", photo_url: "http://res.cloudinary.com/zanzibar/image/upload/c_fill,h_200,w_200/v1507796140/PereFils_vzuktm.jpg" )
ChatRoom.create(name: "Couple", photo_url: "http://res.cloudinary.com/zanzibar/image/upload/v1507796023/rsz_couple_u4kncv.jpg" )
puts "#{ChatRoom.all.size} chatrooms créées"

posts = [1, 2, 3, 4]
chat_rooms = [1, 2, 3, 4]

35.times do Post.create(chat_room: ChatRoom.all.sample, user: User.all.sample, content: Faker::Movie.quote) end
puts "#{Post.all.size} posts créés"

200.times do Message.create(content: Faker::HeyArnold.quote, post: Post.all.sample, user: User.all.sample) end
puts "#{Message.all.size} messages créés"

Type.create(name: "Couches", photo_url: "http://res.cloudinary.com/zanzibar/image/upload/c_fill,g_north,h_320,w_527/v1507880876/Diapers_caz57d.jpg")
Type.create(name: "Lait en poudre", photo_url: "http://res.cloudinary.com/zanzibar/image/upload/v1507880876/ScarfaceLaitPoudre_bgtz4o.jpg")
Type.create(name: "Nourriture", photo_url: "http://res.cloudinary.com/zanzibar/image/upload/v1507880876/Nourriture_yp5vqu.jpg")
puts "#{Type.all.size} types créés"

20.times do Product.create(name: Faker::Commerce.product_name, type: Type.all.sample, price: rand(99)) end
puts "#{Product.all.size} produits créés"
