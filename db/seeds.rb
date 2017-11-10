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


User.create(email: "jules.maregiano@gmail.com", first_name: "Jules", last_name: "Maregiano", date_of_birth: "26/07/1988", couple_situation: 1, role: 1, password: "123soleil")
# User.create(email: "lea@lepapa.club", first_name: "Léa", last_name: "Durand", date_of_birth: "05/12/1992", couple_situation: 1, role: 1, password: "123soleil")
# User.create(email: "james@lepapa.club", first_name: "James", last_name: "Lambert", date_of_birth: "05/12/1992", couple_situation: 1, role: 1, password: "123soleil")
# User.create(email: "iso@lepapa.club", first_name: "Iso", last_name: "Hajjar", date_of_birth: "05/12/1992", couple_situation: 1, role: 1, password: "123soleil")
User.create(email: "jmaregiano@gmail.com", first_name: Faker::HeyArnold.character, last_name:
User.create(email: "james.lambert@gmail.com", username: "jamesl", first_name: "James", last_name: "Lmabert", date_of_birth: "25/07/1989", couple_situation: 1, role: 1, password: "123soleil")
User.create(email: "nadjib.benredjem@gmail.com", username: "nadj-el-daron", first_name: "Nadjib", last_name: "Benredjem", date_of_birth: "19/06/1988", couple_situation: 1, role: 1, password: "123soleil")

Faker::DrWho.specie, date_of_birth: Faker::Date.birthday(18, 65), couple_situation: 1, role: 1, password: "123soleil")
puts "#{User.all.size} Users créés"

# Baby.create(name: "PlaceholderBaby", user: User.first)
20.times do Baby.create(name: Faker::RickAndMorty.character, user: User.all.sample, date_of_birth: Faker::Date.birthday(1, 3), height: 55, weight: 9, gender: 1) end
puts "#{Baby.all.size} Babies créés"


Category.create(name: "Santé")
Category.create(name: "Education")
Category.create(name: "Urgence")
Category.create(name: "Pratique")
Category.create(name: "Couple")
puts "#{Category.all.size} catégories créées"

users = [1, 2]
category = [1, 2, 3, 4, 5]
lorem = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eum, beatae. Consequatur similique eveniet quasi accusamus neque iure beatae repellendus maxime, pariatur suscipit tempore quaerat ex iste esse labore eaque sit? Lorem ipsum dolor sit amet, consectetur adipisicing elit. Excepturi repellat aspernatur consectetur autem doloribus corporis sunt placeat odio, delectus, quo fugiat nulla deserunt, voluptas reiciendis rerum facilis perferendis modi at! "
rock_article = "Aujourd'hui on repart de la base : Comment faire une couche. Et quel père modèle meilleur que The Rock pour illustrer notre propos. Première étape : Lavez et séchez correctement vos mains (vous pouvez utiliser une lingette pour bébé). The Rock se lave toujours les mains en particulier après avoir pratiqué le catch."

5.times do Article.create(title: Faker::Book.title, content: lorem, photo_url: "http://res.cloudinary.com/zanzibar/image/upload/v1508769406/Dad1_csqoio.jpg", category: Category.all.sample, user: User.all.sample) end
Article.create(title: "Apprenez à changer une couche comme The Rock", content: rock_article, photo_url: "http://res.cloudinary.com/zanzibar/image/upload/v1510341441/rock_diaper_cdmhza.jpg", category: Category.all.sample, user: User.all.sample)
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
Type.create(name: "blog", photo_url: "http://res.cloudinary.com/zanzibar/image/upload/v1508769406/Dad1_csqoio.jpg")
Type.create(name: "chat", photo_url: "http://res.cloudinary.com/zanzibar/image/upload/v1508769407/Dad2_lwttgu.jpg")
Type.create(name: "shop", photo_url: "http://res.cloudinary.com/zanzibar/image/upload/v1508769406/Dad3_lie7wd.jpg")

puts "#{Type.all.size} types créés"

# De 2 à 3 mois
Size.create(name: "Taille 1 (2-5kg)")
# De 0 à 4 mois
Size.create(name: "Taille 2 (3-6kg)")
# De 3 à 10 mois
Size.create(name: "Taille 3 (4-9kg)")
# De 6 à 36 mois
Size.create(name: "Taille 4 (7-18kg)")
# Après 10 mois
Size.create(name: "Taille 4+ (10-20kg)")
# Après 18 mois
Size.create(name: "Taille 5 (12-25kg)")

Product.create(name: "New Baby",
               quantity: "88",
               brand: "Pampers",
               type: Type.first,
               description: "Pack Géant",
               subtitle: "Idéal pour faire un gros caca.",
               size_id: 1,
               link: "https://www.amazon.fr/Pampers-Couches-Taille-Géant-couches/dp/B01D0497IS/",
               image_small_url: "https://images-eu.ssl-images-amazon.com/images/I/51ewT6pAkCL._AC_US240_QL65_.jpg",
               price: 12.30)
Product.create(name: "Bébé Hypoallergéniques 0%",
               quantity: "82",
               brand: "Love & Green",
               type: Type.first,
               description: "Couches Bébé Hypoallergéniques 0%",
               subtitle: "Idéal pour faire un gros caca.",
               size_id: 2,
               link: "https://www.amazon.fr/Love-Green-Couches-Hypoallergéniques-couches/dp/B00HN5051O/",
               image_small_url: "https://images-eu.ssl-images-amazon.com/images/I/51IBTkP13VL._AC_US240_QL65_.jpg",
               price: 21.50)
Product.create(name: "Premium Protection",
               quantity: "99",
               brand: "Pampers",
               type: Type.first,
               description: "",
               subtitle: "Idéal pour faire un gros caca.",
               size_id: 3,
               link: "https://www.amazon.fr/Pampers-Premium-Protection-Couches-Taille/dp/B071HY2TM7/",
               image_small_url: "https://images-eu.ssl-images-amazon.com/images/I/51cnCantErL._AC_US327_QL65_.jpg",
               price: 35.98)
Product.create(name: "Premium Protection",
               quantity: "168",
               brand: "Pampers",
               type: Type.first,
               subtitle: "Idéal pour faire un gros caca.",
               size_id: 4,
               link: "https://www.amazon.fr/Pampers-Sleep-Couches-Taille-couches/dp/B01MU7X1TJ/",
               image_small_url: "https://images-eu.ssl-images-amazon.com/images/I/51mE3fctXhL._AC_US240_QL65_.jpg",
               price: 16.15)
Product.create(name: "Baby Dry",
               quantity: "152",
               brand: "Pampers",
               type: Type.first,
               description: "Pack 1 mois",
               subtitle: "Idéal pour faire un gros caca.",
               size_id: 5,
               link: "https://www.amazon.fr/Pampers-Baby-Couches-Taille-couches/dp/B00AR9HX8G/",
               image_small_url: "https://images-eu.ssl-images-amazon.com/images/I/51gvT7VzpXL._AC_US240_QL65_.jpg",
               price: 45.09)
Product.create(name: "Culottes Hypoallergéniques",
               quantity: "18",
               brand: "Love & Green",
               type: Type.first,
               description: "Lot de 2",
               subtitle: "Idéal pour faire un gros caca.",
               size_id: 6,
               link: "https://www.amazon.fr/Love-Green-Culottes-Hypoallerg%C3%A9niques-Taille/dp/B015N3KFGW/",
               image_small_url: "https://images-eu.ssl-images-amazon.com/images/I/51Tmm2eRrlL._AC_US240_QL65_.jpg",
               price: 21.50)
puts "#{Product.all.size} produits créés"
