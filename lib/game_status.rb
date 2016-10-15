# Helper Method
def position_taken?(board, location)
  !(board[location].nil? || board[location] == " ")
end
WIN_COMBINATIONS =[[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]
def won?(board)
WIN_COMBINATIONS.detect do |combo|
board[combo[0]] == board[combo[1]] && board[combo[1]] == board[combo[2]] && position_taken?(board,combo[0])
  end
end
def full?(board)
  board.each do |as|
    if as == " "
      return false
    end
  end
  return true
end
def draw?(board)
  if full?(board) && !won?(board)
    return true
  elsif full?(board) && !won?(board)
    return false
  elsif !full?(board) && won?(board)
    return false
  end
end
def over?(board)
  if draw?(board) && !won?(board)
    return true
  elsif won?(board) && !draw?(board)
    return true
  elsif !full?(board) && !won?(board)
    return false
  end
end
def winner(board)
  if draw?(board)
    return nil
  elsif won?(board) == [0,4,8]
    return "X"
  elsif won?(board)== [1,4,7]
    return "O"
  end
end





# Define your WIN_COMBINATIONS constant
