require 'player'

describe Player do
  subject{ described_class.new("Liz")}

  it 'initializes with the name' do
    expect(subject.name).to eq "Liz"
  end

  it 'removes 10hp when attacked' do
    expect{subject.attacked}.to change{subject.hp}.by(-10)
  end

end
