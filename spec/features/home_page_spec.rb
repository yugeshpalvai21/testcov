require 'rails_helper'

feature 'Visiting Home Page' do
    scenario 'By Guest User' do
        visit root_path
        expect(page).to have_content 'Testing Rails App'
    end
end