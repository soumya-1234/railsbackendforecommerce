# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

product = Product.create([
    {
        name: "Home Decoration",
        image_url: "https://i.ibb.co/J7KcgKM/p1.png",
        price: 5000
    },
    {
        name: "Shoes",
        image_url: "https://i.ibb.co/sFJWRm1/p2.png",
        price: 2000
    },
    {
        name: "Watch",
        image_url: "https://i.ibb.co/rkZFR3C/p3.png",
        price: 3000
    }
])