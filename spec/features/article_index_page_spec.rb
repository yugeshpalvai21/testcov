require 'rails_helper'

feature "visiting Article Index Page" do
    scenario "By Any User" do
        create :article
        visit articles_path
        expect(page).to have_content("All Articles")
        expect(page).to have_content("Test Title One")
    end
end