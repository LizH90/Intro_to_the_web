require 'spec_helper'

feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Welcome to battle'
  end

  scenario "expects players to fill in their names and submit the form" do
    visit('/')
    fill_in('player_1', with: 'Lizzie')
    click_button('Submit')
    expect(page).to have_text "Lizzie"
  end
end
