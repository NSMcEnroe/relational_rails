require 'rails_helper'

RSpec.describe 'destroying a bookstore' do
  it 'can delete the bookstore from the show page' do
    bookstore = Bookstore.create!(
      name: "Danika's Den",
      currently_open: true,
      revenue: 20,
      opening: "2000-12-13 11:15:00",
      fiscal_end_year: "2023-02-01 16:00:00"
      )

    visit "/bookstores/#{bookstore.id}"
    click_button 'Delete Bookstore'

    expect(current_path).to eq('/bookstores')
    expect(page).to_not have_content("Danika's Den")
  end

  it 'can delete the bookstore from the index page' do
    bookstore = Bookstore.create!(
      name: "Danika's Den",
      currently_open: true,
      revenue: 20,
      opening: "2000-12-13 11:15:00",
      fiscal_end_year: "2023-02-01 16:00:00"
      )

    visit "/bookstores/"
    click_button 'Delete Bookstore'

    expect(current_path).to eq('/bookstores')
    expect(page).to_not have_content("Danika's Den")
  end
end


    