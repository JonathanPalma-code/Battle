require 'game'

describe Game do
  subject(:game) { described_class.new(player1, player2) }
  subject(:game_over) { described_class.new(dead_player, player2) }
  let(:player1) { double(:player, hp: 100) }
  let(:player2) { double(:player, hp: 100) }
  let(:dead_player) { double(:player, hp: 0) }

  describe '#player1' do
    it 'retrieves player 1' do
      expect(game.player1).to eq(player1)
    end
  end

  describe '#player2' do
    it 'retrieves player 2' do
      expect(game.player2).to eq(player2)
    end
  end

  describe '#attack' do
    it 'should damage player 2' do
      expect(player2).to receive(:receive_damage)
      game.attack(player2)
    end

    it 'should damage player 1' do
      expect(player1).to receive(:receive_damage)
      game.attack(player1)
    end
  end
  
  describe '#current_turn' do
    it 'starts with player1' do
      expect(game.current_turn).to eq(player1)
    end
  end

  describe '#switch_turn' do
    it 'switches the turn' do
      game.switch_turn
      expect(game.current_turn).to eq(player2)
    end
  end

  describe '#current_player' do
    it 'finds who s turn is ' do
      expect(game.current_player(player1)).to eq(player2)
      expect(game.current_player(player2)).to eq(player1)
    end
  end

  describe '#game_over?' do
    it 'should return false if no players has reached 0 HP' do
      expect(game.game_over?).to be(false)
    end

    it 'should return true if one player reached 0 HP' do
      expect(game_over.game_over?).to be(true)
    end

    it 'should return the player that reached 0 HP' do
      expect(game_over.loser).to eq(dead_player)
    end
  end
end
