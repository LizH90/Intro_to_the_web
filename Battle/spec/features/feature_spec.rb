require 'spec_helper'

feature 'Testing infrastructure' do
  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Welcome to battle'
  end

  scenario "expects players to fill in their names and submit the form" do
    visit('/')
    fill_in('name1', with: 'Lizzie')
    fill_in('name2', with: 'David')
    click_button('Submit')
    expect(page).to have_text "Lizzie vs David"
  end

  scenario "expect session to store names" do
    visit('/')
    fill_in('name1', with: 'Lizzie')
    fill_in('name2', with: 'David')
    click_button('Submit')
    assert_current_path('/play')
  end
end
