require "rails_helper"

RSpec.describe Bookstore do
  it {should have_many :books}
end