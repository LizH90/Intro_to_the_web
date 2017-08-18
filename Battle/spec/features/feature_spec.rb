require 'spec_helper'
require_relative './web_helpers'

feature 'Testing infrastructure' do

  scenario 'Can run app and check page content' do
    visit('/')
    expect(page).to have_content 'Welcome to battle'
  end

  scenario 'expects players to fill in their names and submit the form' do
    sign_in_and_play
    expect(page).to have_text 'Lizzie vs David'
  end

  scenario 'expect session to store names' do
    sign_in_and_play
    assert_current_path('/play')
  end

  scenario 'expects to see player 2\'s hit points' do
    sign_in_and_play
    expect(page).to have_content 'hp: 100'
  end

  scenario 'confirmation you have attacked' do
    sign_in_and_play
    click_button('Attack Player 2')
    expect(page).to have_content 'You have attacked David'
  end
end
