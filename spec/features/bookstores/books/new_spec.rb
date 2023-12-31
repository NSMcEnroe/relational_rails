require 'rails_helper'

RSpec.describe 'creating new books' do
  it "can link to a new books page from the bookstore books index" do
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
    
    visit "/bookstores/#{bookstore_1.id}/books"

    click_link('Create Book')
    expect(current_path).to eq("/bookstores/#{bookstore_1.id}/books/new")
  end

  it 'can create a new book' do
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

    visit "/bookstores/#{bookstore_1.id}/books/new"

    fill_in('title', with: 'Cat in the Hat')
    fill_in('author', with: 'Dr. Seuss')
    fill_in('fiction', with: true)
    fill_in('cost', with: 11.00)
    fill_in('date_published', with: "1957-03-12 01:00:00")
    fill_in('last_sold', with: "2023-03-12 02:00:00")
    click_button('Create Book')

    expect(current_path).to eq("/bookstores/#{bookstore_1.id}/books")
    expect(page).to have_content('Cat in the Hat')
  end

end
