require 'rails_helper'

RSpec.describe 'the childs index page' do
  it 'displays the name of each book and all of their attributes' do

    bookstore_1 = Bookstore.create(
      name: "Honey's Home", 
      currently_open: true, 
      revenue: 70.5, 
      opening: "2018-08-01 10:00:00", 
      fiscal_end_year: "2023-01-31 20:00:00")
    
    book_1 = bookstore_1.books.create(
      title: "Good Omens",
      author: "Terry Pratchett",
      fiction: true,
      cost: 17.99,
      date_published: "1990-05-10 09:30:00",
      last_sold: "2023-09-10 13:00:00"
      )
    
    book_2 = bookstore_1.books.create(
      title: "A Short History",
      author: "Bill Bryson",
      fiction: false,
      cost: 19.99,
      date_published: "2004-02-01 08:30:00",
      last_sold: "2023-11-20 11:25:00" 
      )
      
      visit "/books"

      save_and_open_page

      expect(page).to have_content(book_1.title)
      expect(page).to have_content(book_1.author)
      expect(page).to have_content(book_1.fiction)
      expect(page).to have_content(book_1.cost)
      expect(page).to have_content(book_1.date_published)
      expect(page).to have_content(book_1.last_sold)

      expect(page).to have_content(book_2.title)
      expect(page).to have_content(book_2.author)
      expect(page).to have_content(book_2.fiction)
      expect(page).to have_content(book_2.cost)
      expect(page).to have_content(book_2.date_published)
      expect(page).to have_content(book_2.last_sold)
  end
end

