
def sign_in_and_play

    visit('/')
    fill_in('name1', with: 'Lizzie')
    fill_in('name2', with: 'David')
    click_button('Submit')

  end
