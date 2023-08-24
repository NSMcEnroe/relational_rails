# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

bookstore_1 = Bookstore.create(
  name: "Honey's Home", 
  currently_open: true, 
  revenue: 70.5, 
  opening: "2018-08-01 10:00:00", 
  fiscal_end_year: "2023-01-31 20:00:00")

bookstore_2 = Bookstore.create(
  name: "Corey's Corner", 
  currently_open: false, 
  revenue: 50.25, 
  opening: "1996-02-14 9:00:00", 
  fiscal_end_year: "2023-01-31 18:00:00")

book_1 = Book.create(
      title: "Good Omens",
      author: "Terry Pratchett",
      fiction: true,
      cost: 17.99,
      date_published: "1990-05-10 09:30:00",
      last_sold: "2023-09-10 13:00:00"
      )
    
book_2 = Book.create(
      title: "A Short History",
      author: "Bill Bryson",
      fiction: false,
      cost: 19.99,
      date_published: "2004-02-01 08:30:00",
      last_sold: "2023-11-20 11:25:00" 
      )