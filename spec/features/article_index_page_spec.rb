require 'rails_helper'

feature "Article Index Page" do
    scenario "List All Articles" do
        create :article
        visit articles_path
        expect(page).to have_content("All Articles")
        expect(page).to have_content("Test Title One")
    end

    scenario "able to find new article form" do
        visit articles_path

        expect(page).to have_button "Create Article"
    end

    scenario "able to create new article from index page and updates index list" do
        visit articles_path

        fill_in :article_title, with: "Rails AJAX"

        click_button "Create Article"

        expect(page).to have_content "Rails AJAX"
    end
end