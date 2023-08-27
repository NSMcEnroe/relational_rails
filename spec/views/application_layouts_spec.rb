require 'rails_helper'

RSpec.describe 'layouts/application', type: :view do
  it 'can display the child index on every page' do
    render

    expect(rendered).to have_content('I LoVe GrApHiC dEsIgN')
    expect(rendered).to have_link('All Books', href: '/books')
  end
end