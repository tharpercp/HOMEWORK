class Board
  attr_accessor :cups

  

  def initialize(name1, name2)
    @cups = Array.new(14) { [] }
    @name1 = name1
    @name2 = name2
    place_stones
  end

  def place_stones
    i = 0
    while i < 13 
      if i == 6
        i += 1
      else
        4.times { @cups[i] << :stone }
        i += 1
      end
    end
  end

  def valid_move?(start_pos)
    raise "Invalid starting cup" if start_pos < 0 || start_pos > 12
    raise "Starting cup is empty" if cups[start_pos].count == 0 
  end

  def make_move(start_pos, current_player_name)
    stones = cups[start_pos].length 
    @cups[start_pos].clear
    i = start_pos + 1
    while stones > 0
      i = 0 if i > 13
      current = i 
      if current == 6
        @cups[6] << :stone if current_player_name == @name1
        stones -= 1
        i += 1
      elsif current == 13
        @cups[13] << :stone if current_player_name == @name2
        stones -= 1
        i += 1
      else
        @cups[current] << :stone
        stones -= 1
        i += 1
      end
    end
    render
    next_turn(current)
  end

  
        

  def next_turn(ending_cup_idx)
    if ending_cup_idx == 6 || ending_cup_idx == 13
      return :prompt
    elsif @cups[ending_cup_idx].count == 1
      return :switch
    else 
      return ending_cup_idx
    end
  end

  def render
    print "      #{@cups[7..12].reverse.map { |cup| cup.count }}      \n"
    puts "#{@cups[13].count} -------------------------- #{@cups[6].count}"
    print "      #{@cups.take(6).map { |cup| cup.count }}      \n"
    puts ""
    puts ""
  end

  def one_side_empty?
    return true if @cups[0..5].all? { |el| el.empty? } || @cups[7..12].all? { |el| el.empty? }
    false
  end

  def winner
    if @cups[6].length == @cups[13].length
      return :draw
    elsif @cups[6].length > @cups[13].length
      return @name1
    else
      return @name2
    end 
  end
end