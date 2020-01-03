class Game
  attr_reader :current_turn

  def initialize(player1, player2)
    @players = [player1, player2]
    @current_turn = player1
  end

  def player1
    @players.first
  end

  def player2
    @players.last
  end

  def attack(player)
    player.receive_damage
  end

  def switch_turn
    @current_turn = current_player(current_turn)
  end

  def current_player(the_player)
    players_who_are_not(the_player).first
  end

  def game_over?
    losing_player.any?
  end

  def loser
    losing_player.first
  end

  private

  attr_reader :players

  def losing_player
    players.select { |player| player.hp <= 0 }
  end

  def players_who_are_not(the_player)
    players.select { |player| player != the_player }
  end
end