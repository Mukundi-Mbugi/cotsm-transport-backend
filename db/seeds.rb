require 'faker'
require 'pry'

puts "🌱 Seeding data..."

latitudes = [-1.286389,-1.286379,-1.286369,-1.286359,-1.286349,-1.286339]
longitudes = [36.816667,36.816657,36.816647,36.816637,36.816627,36.816617]

20.times do
  Member.create(
    name: Faker::Name.name,
    estate: Faker::Address.city,
    nearest_stage: Faker::Address.city,
    latitude: latitudes.sample,
    longitude: longitudes.sample
  )
end



puts "🌱 Done seeding!"

binding.pry
