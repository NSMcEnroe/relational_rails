require 'rails_helper'

RSpec.describe 'creating new bookstores' do
  it 'links to the new page from the parent index page' do
    visit '/bookstores'
    
    click_link('New Bookstore')
    expect(current_path).to eq('/bookstores/new')
  end
end

