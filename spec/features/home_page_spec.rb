require 'rails_helper'

RSpec.feature "Home Page" do
  scenario "User Visits Root/Home Page" do
    visit "/"
    expect(page).to have_content "Hello World"
  end
end