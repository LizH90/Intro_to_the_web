require 'spec_helper'

feature 'Testing infrastructure' do

  before(:each) do
    visit('/')
  end

  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Welcome to battle'
  end

  before(:each) do
    fill_in('name1', with: 'Lizzie')
    fill_in('name2', with: 'David')
    click_button('Submit')
  end

  scenario 'expects players to fill in their names and submit the form' do
    expect(page).to have_text 'Lizzie vs David'
  end

  scenario 'expect session to store names' do
    assert_current_path('/play')
  end

  scenario 'expects to see player 2\'s hit points' do
    expect(page).to have_content 'hp: 100'
  end

end
