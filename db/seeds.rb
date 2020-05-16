# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

array_categories = ['Coding', 'Music', 'Cooking', 'Languages', 'Sports', 'Arts']
array_categories.each do |category|
    cat = Category.create(name: category)
    puts "Create #{cat.id} categories"
end

i = 0
(1..5).each do |n|
    user = User.create({
        first_name: Faker::Name.first_name, 
        last_name: Faker::Name.last_name, 
        email: "user#{n}@gmail.com", 
        password: "123456",
    })
end


Course.create({
    title: "Ruby",
    description: "Learn the Ruby programming language.",
    duration: 90,
    price: 60,
    schedule_date: Faker::Date.forward(days: 10),
    max_bookings: 4,
    category_id: 1,
    user_id: 1,
    address: "rua riachuelo, rio, 248",
    online: false,
    }
)

Course.create({
    title: "Javascript",
    description: "Learn about JavaScript advanced features and built-in methods",
    duration: 60,
    price: 40,
    schedule_date: Faker::Date.forward(days: 10),
    max_bookings: 2,
    category_id: 1,
    user_id: 4,
    online: true,
    }
)

Course.create({
    title: "Python",
    description: "Start learning Python today.",
    duration: 120,
    price: 50,
    schedule_date: Faker::Date.forward(days: 10),
    max_bookings: 4,
    category_id: 1,
    user_id: 3,
    address: "Rua Geraldo Martins, 124, Niteroi",
    online: false,
    }
)

Course.create({
    title: "C# Basics",
    description: "Start learning C# basics today.",
    duration: 100,
    price: 40,
    schedule_date: Faker::Date.forward(days: 10),
    max_bookings: 5,
    category_id: 1,
    user_id: 2,
    online: true,
    }
)

Course.create({
    title: "Guitar",
    description: "Start learning Guitar",
    duration: 60,
    price: 15,
    schedule_date: Faker::Date.forward(days: 10),
    max_bookings: 3,
    category_id: 2,
    user_id: 2,
    address: "rua gustavo sampaio, 448, rio",
    online: false,
    }
)

Course.create({
    title: "Cooking pie",
    description: "Learn to cook pie",
    duration: 30,
    price: 10,
    schedule_date: Faker::Date.forward(days: 10),
    max_bookings: 6,
    category_id: 3,
    user_id: 5,
    address: "avenida princesa isabel, copacabana 12, rio",
    online: false,
    }
)

Course.create({
    title: "Yoga",
    description: "Go on yoga class",
    duration: 90,
    price: 60,
    schedule_date: Faker::Date.forward(days: 10),
    max_bookings: 6,
    category_id: 5,
    user_id: 3,
    online: true,
    }
)

Course.create({
    title: "Violon",
    description: "Learn the basics of violon",
    duration: 90,
    price: 70,
    schedule_date: Faker::Date.forward(days: 10),
    max_bookings: 2,
    category_id: 2,
    user_id: 4,
    online: true,
    }
)

Course.create({
    title: "Drums",
    description: "Learn how to play drums with the best coach",
    duration: 45,
    price: 50,
    schedule_date: Faker::Date.forward(days: 10),
    max_bookings: 1,
    category_id: 2,
    user_id: 3,
    address: "Ladeira da Gloria, 26, rio",
    online: false,
    }
)

Course.create({
    title: "Saxophon",
    description: "Class for the advanced saxophon's lovers",
    duration: 50,
    price: 60,
    schedule_date: Faker::Date.forward(days: 10),
    max_bookings: 4,
    category_id: 2,
    user_id: 1,
    }
)

Course.create({
    title: "Percussion",
    description: "Learn percussion with the advanced techniques.",
    duration: 50,
    price: 60,
    schedule_date: Faker::Date.forward(days: 10),
    max_bookings: 2,
    category_id: 2,
    user_id: 4,
    address: "Rua Marechal Deodoro, 360, Niteroi",
    online: false,
    }
)

Course.create({
    title: "Ruby Advanced",
    description: "Learn the Ruby Advanced programming language",
    duration: 100,
    price: 40,
    schedule_date: Faker::Date.forward(days: 10),
    max_bookings: 5,
    category_id: 1,
    user_id: 2,
    address: "avenida antonio carlos, 58, centro, rio",
    online: false,
    }
)

Course.create({
    title: "Runnig",
    description: "Running on the beach",
    duration: 60,
    price: 20,
    schedule_date: Faker::Date.forward(days: 10),
    max_bookings: 10,
    category_id: 5,
    user_id: 2,
    online: false,
    address: "Avenida Horácio Macedo, 2151, Rio"
    }
)