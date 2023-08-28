require 'rails_helper'

RSpec.describe 'creating new bookstores' do
  it 'links to the new page from the parent index page' do
    visit '/bookstores'

    click_link('New Bookstore')
    expect(current_path).to eq('/bookstores/new')
  end

  it 'can create a new bookstore' do
    visit '/bookstores/new'

    fill_in('name', with: "Danika's Den")
    fill_in('currently_open', with: "true")
    fill_in('revenue', with: 125.75)
    fill_in('opening', with: "2000-12-13 11:15:00")
    fill_in('fiscal_end_year', with: "2023-02-01 16:00:00")
    click_button('Create Bookstore')

    expect(current_path).to eq("/bookstores")
    expect(page).to have_content("Danika's Den")
    # expect(page).to have_content(true)
    # expect(page).to have_content(125.75)
    # expect(page).to have_content("2000-12-13 11:15:00")
    # expect(page).to have_content("2023-02-01 16:00:00")

  end

end

