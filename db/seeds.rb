# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create(:email => "j@example.com", :password => "password")

food1 = Food.create(
  :name => "Pizza",
  :amount => "1 slice",
  :calories => 285,
  :protein => 12,
  :fat => 10,
  :carbs => 36)

food2 = Food.create(
  :name => "Hamburger",
  :amount => "1",
  :calories => 354,
  :protein => 20,
  :fat => 17,
  :carbs => 29)

# This way user_id is set dynamically
user1.foods.push(food1)
user1.foods.push(food2)
