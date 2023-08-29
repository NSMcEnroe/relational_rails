require 'rails_helper'

RSpec.describe 'destroying a book' do
  it 'can delete the book from the show page and the database' do
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

    visit "/books/#{book_1.id}"

    click_button 'Delete Book'

    expect(current_path).to eq('/books')
    expect(page).to_not have_content("Good Omens")
  end

  it 'can delete the book from the index page' do
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

    visit "/books"

    click_button 'Delete Book'

    expect(current_path).to eq('/books')
    expect(page).to_not have_content("Good Omens")
  end
end