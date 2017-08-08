# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Item.destroy_all
Inventory.destroy_all
Organization.destroy_all
Donor.destroy_all



index = 0

13.times do |index|
    Item.create!(category: Faker::Name.name,
                        itemName: Faker::Hacker.noun,
                        expiration: Faker::Time.between(1.week.ago, 4.months.from_now ),
                        donationID: Faker::Number.between(from = 1.00, to = 5000.00),
                        item_id: index)
    Organization.create!(address: Faker::Address.street_address,
                        org_name: Faker::Company.name,
                        phone: Faker::PhoneNumber.phone_number,
                        contact_id: Faker::Name.name,
                        organization_id: index)
    Inventory.create!(itemnum: index
                        orgnum: index
                        quantity: Faker::Number.between(from = 1.00, to = 5000.00),
                        expires: Faker::Time.between(1.week.ago, 4.months.from_now ),
                        inventory_id: index) 
end 

p "Created #{Inventory.count} items"
p "Created #{Item.count} items"
p "Created #{Organization.count} items"

