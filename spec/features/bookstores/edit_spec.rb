require 'rails_helper'

RSpec.describe "updating a bookstore" do
  it 'links to the edit page' do
    bookstore = Bookstore.create!(
      name: "Danika's Den",
      currently_open: true,
      revenue: 20,
      opening: "2000-12-13 11:15:00",
      fiscal_end_year: "2023-02-01 16:00:00"
      )
    
      visit '/bookstores'

      click_button "Update #{bookstore.name}"

      expect(current_path).to eq("/bookstores/#{bookstore.id}/edit")
  end

  it 'can edit the bookstore' do
    bookstore = Bookstore.create!(
      name: "anika's Den",
      currently_open: true,
      revenue: 20,
      opening: "2000-12-13 11:15:00",
      fiscal_end_year: "2023-02-01 16:00:00"
      )

    visit '/bookstores'

    expect(page).to have_content("anika's Den")

    click_button "Update anika's Den"


    fill_in('name', with: "Danika's Den")
    fill_in('currently_open', with: "true")
    fill_in('revenue', with: 125.75)
    fill_in('opening', with: "2000-12-13 11:15:00")
    fill_in('fiscal_end_year', with: "2023-02-01 16:00:00")
    click_button 'Update Bookstore'

    expect(current_path).to eq("/bookstores")
    expect(page).to have_content("Danika's Den")

  end
end
