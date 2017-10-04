# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destruction de la DB"
User.destroy_all
Baby.destroy_all
Article.destroy_all
Category.destroy_all
Message.destroy_all
Post.destroy_all
ChatRoom.destroy_all
# Products.destroy_all

User.create(email: "jules@lepapa.club", first_name: "Jules", last_name: "Maregiano", date_of_birth: "26/07/1988", couple_situation: 1, role: 1, password: "123soleil")
User.create(email: "lea@lepapa.club", first_name: "Léa", last_name: "Durand", date_of_birth: "05/12/1992", couple_situation: 1, role: 1, password: "123soleil")
20.times do User.create(email: Faker::Internet.email, first_name: Faker::HeyArnold.character, last_name:
Faker::DrWho.specie, date_of_birth: Faker::Date.birthday(18, 65), couple_situation: 1, role: 1, password: "123soleil") end
puts "Users créés"

20.times do Baby.create(name: Faker::RickAndMorty.character, user: User.all.sample, date_of_birth: Faker::Date.birthday(1, 3), height: 55, weight: 9, gender: 1) end

Category.create(name: "Santé")
Category.create(name: "Education")
Category.create(name: "Urgence")
Category.create(name: "Pratique")
Category.create(name: "Couple")
puts "#{Category.all.size} catégories créés"

users = [1, 2]
category = [1, 2, 3, 4, 5]
lorem = "Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eum, beatae. Consequatur similique eveniet quasi accusamus neque iure beatae repellendus maxime, pariatur suscipit tempore quaerat ex iste esse labore eaque sit?"


15.times do Article.create(title: Faker::Book.title, content: lorem, category: Category.all.sample, user: User.all.sample) end
puts "#{Article.all.size} articles créés"

ChatRoom.create(name: "Général")
ChatRoom.create(name: "Santé")
ChatRoom.create(name: "Urgence")
ChatRoom.create(name: "Pratique")
puts "#{ChatRoom.all.size} chatrooms créés"

posts = [1, 2, 3, 4]
chat_rooms = [1, 2, 3, 4]

35.times do Post.create(chat_room: ChatRoom.all.sample, user: User.all.sample, content: Faker::Movie.quote) end
puts "#{Post.all.size} posts créés"

200.times do Message.create(content: Faker::HeyArnold.quote, post: Post.all.sample, user: User.all.sample) end
puts "#{Message.all.size} messages créés"

