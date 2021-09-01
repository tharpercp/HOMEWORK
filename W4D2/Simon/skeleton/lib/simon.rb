class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @game_over = false
    @seq = Array.new
    @sequence_length =  1

  end

  def play
    until game_over == true
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    self.show_sequence
    self.require_sequence
    if game_over == false
      self.round_success_message
      @sequence_length += 1
    end
  end

  def show_sequence
    self.add_random_color
  end

  def require_sequence
      
  end

  def add_random_color
    @seq << COLORS.sample
  end

  def round_success_message
    p "Color success!"
  end

  def game_over_message
    p "Game over :("
  end

  def reset_game
    @sequence_length = 1
    @game_over = false
    seq.clear 

  end
end
