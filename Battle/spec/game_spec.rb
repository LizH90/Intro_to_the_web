require 'game'

describe Game do

context 'creating doubles' do
  let(:double_p1) {double :player1}
  let(:double_p2) {double :player2}
  subject {described_class.new(double_p1,double_p2)}

    it 'attacks player 2' do
      expect(double_p2).to receive(:attacked)
      subject.attack(double_p2)
    end
  end
end
