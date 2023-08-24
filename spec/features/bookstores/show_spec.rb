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
end