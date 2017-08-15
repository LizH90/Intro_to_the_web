require 'spec_helper'

describe Battle do

  it 'works' do
    expect(subject.class).to eq(described_class)
  end

  it 'outputs message to homepage' do
    visit '/'

    expect(page).to have_text('Testing infrastructure working!')
  end



end