# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

array_categories = ['Coding', 'Music', 'Cooking', 'Languages', 'Physical Activity', 'Arts']
array_categories.each do |category|
    cat = Category.create(name: category)
    puts "Create #{cat.id} categories"
end
