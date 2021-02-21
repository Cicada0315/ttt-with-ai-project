class Board
  attr_accessor :cells
    
  def initialize
    @cells=Array.new(9, " ")
  end

  def reset!
    @cells=Array.new(9, " ")
  end

  def display
    puts " #{cells[0]} | #{cells[1]} | #{cells[2]} "
    puts "-----------"
    puts " #{cells[3]} | #{cells[4]} | #{cells[5]} "
    puts "-----------"
    puts " #{cells[6]} | #{cells[7]} | #{cells[8]} "
  end

  def position(index)
    cells[index.to_i-1]
  end

  def full?
    return !cells.include?(" ")
  end

  def taken?(index)
    i=index.to_i
    return @cells[i-1]=="O"|| @cells[i-1]=="X"   
  end

  def valid_move?(index)
    i=index.to_i
    return !taken?(index) && i.between?(1,9)
  end

  def turn_count
    count=0
    cells.each {|index| count+=1 if index=="X" || index=="O"}
    count
  end

  def update(index, player)
    i=index.to_i-1
    cells[i]=player.token
  end
end