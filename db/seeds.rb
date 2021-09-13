# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Destroy
List.destroy_all
Item.destroy_all


# User add
User.destroy_all
User.create(name: 'Cliente', email: 'cliente@email.com', password: '123456')


# Category
Category.destroy_all
Category.create(name: 'Diversa', status: 'a', color: 'red')