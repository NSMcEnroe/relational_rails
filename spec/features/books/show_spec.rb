require 'rails_helper'

RSpec.describe 'the childs show page for a particular book' do
  it 'displays the name of the book including the books attributes' do
    book_1 = Book.create(
      title: "Good Omens",
      author: "Terry Pratchett",
      fiction: true,
      cost: 17.99,
      date_published: "1990-05-10 09:30:00",
      last_sold: "2023-09-10 13:00:00"
      )
    
      
      visit "/books/#{book_1.id}"

      expect(page).to have_content(book_1.title)
      expect(page).to have_content(book_1.author)
      expect(page).to have_content(book_1.fiction)
      expect(page).to have_content(book_1.cost)
      expect(page).to have_content(book_1.date_published)
      expect(page).to have_content(book_1.last_sold)
  end
end