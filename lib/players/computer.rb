class Players::Computer < Player
  attr_accessor :board
  def move(board)
    valid_index = [1, 2, 3, 4, 5, 6, 7, 8, 9].detect {|index| board.taken?(index) == false}.to_s
  end
end