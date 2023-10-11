# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


# Admin
p "Creating admin..."
User.create!(first_name: "John", last_name: "Doe", password: "123456", address: "20 Av de Bardanac", email: "johndoe@email.com", phone_number: "0766163791", admin: true)

# Items
p "Creating menu..."

# Sample items of type "Pizza"
Item.create!(
  title: "Margherita Pizza",
  item_type: "Pizza",
  description: "Classic margherita pizza with tomato sauce, mozzarella, and basil.",
  price: 10.99
)

Item.create!(
  title: "Pepperoni Pizza",
  item_type: "Pizza",
  description: "Delicious pepperoni pizza with tomato sauce, mozzarella, and pepperoni slices.",
  price: 12.99
)

# Sample items of type "Drink"
Item.create!(
  title: "Coke",
  item_type: "Drink",
  description: "Refreshing Coca-Cola in a 12 oz can.",
  price: 1.99
)

Item.create!(
  title: "Sprite",
  item_type: "Drink",
  description: "Thirst-quenching Sprite in a 12 oz can.",
  price: 1.99
)

# Sample items of type "Snack"
Item.create!(
  title: "Cheese Sticks",
  item_type: "Snack",
  description: "Delicious cheese sticks served with marinara sauce.",
  price: 4.99
)

Item.create!(
  title: "Garlic Bread",
  item_type: "Snack",
  description: "Freshly baked garlic bread with garlic butter and herbs.",
  price: 3.99
)

# More sample items of type "Pizza"
Item.create!(
  title: "Vegetarian Pizza",
  item_type: "Pizza",
  description: "A delightful vegetarian pizza with bell peppers, onions, olives, and mushrooms.",
  price: 11.99
)

Item.create!(
  title: "Hawaiian Pizza",
  item_type: "Pizza",
  description: "Hawaiian pizza topped with ham and pineapple slices.",
  price: 12.99
)

# More sample items of type "Drink"
Item.create!(
  title: "Pepsi",
  item_type: "Drink",
  description: "Refreshing Pepsi in a 12 oz can.",
  price: 1.99
)

Item.create!(
  title: "Iced Tea",
  item_type: "Drink",
  description: "Chilled iced tea served with lemon wedges.",
  price: 1.99
)

# More sample items of type "Snack"
Item.create!(
  title: "Chicken Wings",
  item_type: "Snack",
  description: "Savory chicken wings with your choice of sauce.",
  price: 5.99
)

Item.create!(
  title: "French Fries",
  item_type: "Snack",
  description: "Crispy golden french fries served with ketchup.",
  price: 3.99
)
