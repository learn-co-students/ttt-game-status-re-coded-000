WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
def won?(board)
  WIN_COMBINATIONS.detect do |i|
    board[i[0]] == board[i[1]] && board[i[1]] == board[i[2]] && position_taken?(board, i[0])
  end
end
  def full?(board)
    result = true

  board.each do |i|
    if i != "X" && i != "O"
      result = false
    end
  end
  result
end
#  def full?(board)
#    board.all? do |item|
#      item = "X" || item = "O"
# end

#     result
#end
def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  draw?(board) || won?(board)
end
def winner(board)
  i =won?(board)
  if i
    return board[i[0]]
  end
end

def position_taken?(board, location)
  !(board[location].nil? || board[location] == " ")
end
