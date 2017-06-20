# Create Users
3.times do
  User.create!(
    email: Faker::Internet.unique.email,
    password: Faker::Internet.unique.password
  )
end
users = User.all

# Create Items
10.times do
  Item.create!(
    user: users.sample,
    name: Faker::Name.title
  )
end
items = Item.all

user = User.first
user.update_attributes!(
  email: 'jjw244@utexas.edu',
  password: 'fakefakefake'
)

puts "Seed finished"
puts "#{User.count} users created"
puts "#{Item.count} items created"
