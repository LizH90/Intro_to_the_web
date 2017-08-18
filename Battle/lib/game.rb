class Game

  attr_accessor :player1, :player2, :turn

  def initialize(player1, player2, turn = player1)
    @player1 = player1
    @player2 = player2
    @turn = turn
  end

  def attack(player)
    player.attacked
  end

  def switch
    player1? ? @turn = player2 : @turn = player1
  end

  def player1?
    @turn == player1
  end


end
