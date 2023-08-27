require 'rails_helper'

RSpec.describe 'the parents show page for a particular bookstore' do
  it 'displays the name of the bookstore including the bookstores attributes' do
    bookstore = Bookstore.create(
      name: "Honey's Home", 
      currently_open: true, 
      revenue: 70.5, 
      opening: "2018-08-01 10:00:00", 
      fiscal_end_year: "2023-01-31 20:00:00")
      
      visit "/bookstores/#{bookstore.id}"

      expect(page).to have_content(bookstore.name)
      expect(page).to have_content(bookstore.currently_open)
      expect(page).to have_content(bookstore.revenue)
      expect(page).to have_content(bookstore.opening)
      expect(page).to have_content(bookstore.fiscal_end_year)

  end

  it 'displays how many books are within the bookstore' do

    bookstore = Bookstore.create(
      name: "Honey's Home", 
      currently_open: true, 
      revenue: 70.5, 
      opening: "2018-08-01 10:00:00", 
      fiscal_end_year: "2023-01-31 20:00:00")
      
    book_1 = bookstore.books.create(
      title: "Good Omens",
      author: "Terry Pratchett",
      fiction: true,
      cost: 17.99,
      date_published: "1990-05-10 09:30:00",
      last_sold: "2023-09-10 13:00:00"
      )
    
    book_2 = bookstore.books.create(
      title: "A Short History",
      author: "Bill Bryson",
      fiction: false,
      cost: 19.99,
      date_published: "2004-02-01 08:30:00",
      last_sold: "2023-11-20 11:25:00" 
      )

    visit "/bookstores/#{bookstore.id}"

    expect(page).to have_content(bookstore.books.count)
  end
end