require 'rails_helper'

RSpec.describe 'the parents index page' do
  it 'displays the name of each bookstore' do
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
      
      visit "/bookstores"

      expect(page).to have_content(bookstore_1.name)
      expect(page).to have_content(bookstore_2.name)

  end
end


