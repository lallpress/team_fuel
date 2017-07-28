# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#Item.connect
#Item.destroy_all
#Inventory.connect
#Inventory.destroy_all
 
100.times do |index|
    Inventory.create!(itemnum: index,
                        orgnum: Faker::Number.non_zero_digit,
                        quantity: Faker::Number.between(from = 1.00, to = 5000.00),
                        expires: Faker::Time.between(1.week.ago, 4.months.from_now ))
#  Item.create!(category: Faker::Name.name,
#                itemName: Faker::Name.name)
end
p "Created #{Inventory.count} items"
p "Created #{Item.count} items"