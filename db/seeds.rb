# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require 'faker'

User.destroy_all
Game.destroy_all

puts "🏕 Seeding users..."
user1 = User.create(email: 'test@gmail.com', password: '123456')

puts "🏕 Seeding games..."

50.times do
    Game.create(
        name: Faker::Game.title,
        genre: Faker::Game.genre,
        platform: Faker::Game.platform)
end

puts "✅ Done seeding!"
