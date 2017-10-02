# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destruction de la DB"
Article.destroy_all
Category.destroy_all
User.destroy_all
Baby.destroy_all
# Products.destroy_all

User.create(email: "jules@lepapa.club", first_name: "Jules", last_name: "Maregiano", date_of_birth: "26/07/1988", couple_situation: 1, role: 1, password: "123soleil")
User.create(email: "lea@lepapa.club", first_name: "Léa", last_name: "Durand", date_of_birth: "05/12/1992", couple_situation: 1, role: 1, password: "123soleil")
puts "Users créés"


Category.create(name: "Santé")
Category.create(name: "Education")
Category.create(name: "Urgence")
Category.create(name: "Pratique")
Category.create(name: "Couple")
puts "Catégories créés"

users = [1, 2]
category = [1, 2, 3, 4, 5]

Article.create(title: "titre", content: "lorem ipsoum", category_id: category.sample, user_id: users.sample)
Article.create(title: "titre", content: "lorem ipsoum", category_id: category.sample, user_id: users.sample)
Article.create(title: "titre", content: "lorem ipsoum", category_id: category.sample, user_id: users.sample)
Article.create(title: "titre", content: "lorem ipsoum", category_id: category.sample, user_id: users.sample)
puts "Articles créés"

ChatRoom.create(name: "Santé")
ChatRoom.create(name: "Général")
ChatRoom.create(name: "Urgence")
ChatRoom.create(name: "Pratique")
puts "Chatrooms créés"

Message.create(content: "Bla!", user_id: users.sample)
Message.create(content: "Bla!", user_id: users.sample)
Message.create(content: "Bla!", user_id: users.sample)
Message.create(content: "Bla!", user_id: users.sample)
Message.create(content: "Bla!", user_id: users.sample)
puts "Messages créés"

posts = [1, 2, 3, 4]
chat_rooms = [1, 2, 3, 4]

Post.create(chat_room_id: chat_rooms.sample, user_id: users.sample, content: "Blabla, texte du post", message: Message.all.sample)
Post.create(chat_room_id: chat_rooms.sample, user_id: users.sample, content: "Blabla, texte du post", message: Message.all.sample)
Post.create(chat_room_id: chat_rooms.sample, user_id: users.sample, content: "Blabla, texte du post", message: Message.all.sample)
Post.create(chat_room_id: chat_rooms.sample, user_id: users.sample, content: "Blabla, texte du post", message: Message.all.sample)
puts "Posts créés"
