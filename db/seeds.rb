# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "📃 Seeding data..."

User.create!(username: "test", password: "password")

8.times do

    Product.create!(
        name: Faker::Appliance.unique.equipment,
        description: Faker::Marketing.buzzwords,
        price: Faker::Number.unique.number(digits: 4),
        img_url: "https://loremflickr.com/#{rand(130..190)}/#{rand(140..200)}/item"
    )

end

puts "✅ done seeding!"
