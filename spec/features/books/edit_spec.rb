require 'rails_helper'

RSpec.describe "updating a book" do
  it 'links to the edit page' do
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

      click_button "Update Book"

      expect(current_path).to eq("/books/#{book_1.id}/edit")
  end

  it 'can edit the bookstore' do
    bookstore_1 = Bookstore.create(
      name: "Honey's Home", 
      currently_open: true, 
      revenue: 70.5, 
      opening: "2018-08-01 10:00:00", 
      fiscal_end_year: "2023-01-31 20:00:00")
    
    book_1 = bookstore_1.books.create(
      title: "ood Omens",
      author: "Terry Pratchett",
      fiction: true,
      cost: 17.99,
      date_published: "1990-05-10 09:30:00",
      last_sold: "2023-09-10 13:00:00"
      )
    

    visit "/books/#{book_1.id}"

    expect(page).to have_content("ood Omens")

    click_button "Update Book"


    fill_in('title', with: "Good Omens")
    fill_in('author', with: "Terry Pratchett")
    fill_in('fiction', with: 17.99)
    fill_in('cost', with: 17.99)
    fill_in('date_published', with: "1990-05-10 09:30:00")
    fill_in('last_sold', with: "2023-09-10 13:00:00")
    click_button 'Update Book'

    expect(current_path).to eq("/books/#{book_1.id}")
    expect(page).to have_content("Good Omens")

  end
end
