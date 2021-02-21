class Players::Human < Player
  attr_accessor :board
  def move(board)
    @board=board
    input=gets
  end
end