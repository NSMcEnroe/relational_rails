require 'rails_helper'

RSpec.describe 'the childs index page' do
  it 'displays the name of each book and all of their attributes' do
    book_1 = Book.create(
      title: "Good Omens",
      author: "Terry Pratchett",
      fiction: true,
      cost: 17.99,
      date_published: "1990-05-10 09:30:00",
      last_sold: "2023-09-10 13:00:00"
      bookstore_id: 
      )
    
    bookstore_2 = Bookstore.create(
      name: "Corey's Corner", 
      currently_open: false, 
      revenue: 50.25, 
      opening: "1996-02-14 9:00:00", 
      fiscal_end_year: "2023-01-31 18:00:00")
      
      visit "/#{@book.name}"

      expect(page).to have_content(bookstore_1.name)
      expect(page).to have_content(bookstore_2.name)

  end
end

As a visitor
When I visit '/child_table_name'
Then I see each Child in the system including the Child's attributes
(data from each column that is on the child table)