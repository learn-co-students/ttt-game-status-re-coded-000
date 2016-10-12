WIN_COMBINATIONS = [[0,1,2],[3,4,5],[6,7,8],[2,4,6],[0,4,8],[0,3,6],[1,4,7],[2,5,8]]

def won?(board)
  WIN_COMBINATIONS.detect do|win|
    (board[win[0]] == "X" && board[win[1]] == "X" && board[win[2]] == "X") || (board[win[0]] == "O" && board[win[1]] == "O" && board[win[2]] == "O")
  end
end

def full?(board)
  board.all? do |element|
    element =="X" || element == "O"
  end
end

def draw?(board)
  if full?(board) && !won?(board)
  return  true
  elsif !won?(board) && !full?(board) || won?(board)
    return false
  end
end

def over?(board)
  if won?(board) || full?(board)
    return true
  else
    return false
end
end

def winner(board)
  if won?(board)
    winner = won?(board)
    if board[winner[0]] =="X"
    return "X"
    else
    return "O"
    end
  elsif draw?(board)
  return false
  end
end
