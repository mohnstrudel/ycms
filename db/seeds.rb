# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Create superadmin user

User.create(first_name: "Super", second_name: "Admin", superadmin: true, email: "admin@example.com", password: "superadmin")

puts "Creating Page Categories"
5.times do
	PageCategory.create(title: Faker::Lorem.sentence(3), slug: Faker::Lorem.words(3).join("-"))
end 
puts "Ending creating page cats."

puts "Starting creating pages"
100.times do
	Page.create(
		title: Faker::Lorem.sentence(3), 
		body: Faker::Lorem.paragraph(rand(100)),
		slug: Faker::Lorem.words(3).join("-"),
		page_category_id: rand(5)+1 )
end
puts "Ending creating pages"