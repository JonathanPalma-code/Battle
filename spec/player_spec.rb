require 'player'

describe Player do
  subject(:jonathan) { described_class.new('Jonathan') }
  subject(:williams) { described_class.new('Williams') }
  let(:name) { double(:name) }
  let(:hp) { Player::HP}

  describe '#name' do
    it 'should return the name of the player' do
      expect(jonathan.name).to eq 'Jonathan'
    end
  end
  
  describe '#HP' do
    it 'should return the hp of the player' do
      expect(williams.hp).to eq hp
    end
  end

  describe '#receive_attack' do
    it 'should receive an attack' do
      expect{ jonathan.receive_damage }.to change{ jonathan.hp }.by(-10)
    end
  end

end
