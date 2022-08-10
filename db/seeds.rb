puts "Cleaning DB..."
Restaurant.destroy_all

puts "Seeding restaurants..."

100.times do
  rest = Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number
    category: ["chinese", "italian", "japanese", "french", "belgian"].sample
  )
  puts "Restaurant with id #{rest.id} was added"
end

puts "All done!"
