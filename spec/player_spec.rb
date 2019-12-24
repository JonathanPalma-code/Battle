require 'player'

describe Player do
  subject(:player) { described_class.new('Jonathan') }
  let(:name) { double(:name) }

  describe '#name' do
    it 'should return the name of the player' do
      expect(player.name).to eq 'Jonathan'
    end
  end
end