# Helper Method
def position_taken?(board, location)
  !(board[location].nil? || board[location] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # first row
  [3,4,5], # middle row
  [6,7,8], # last row
  [0,3,6], # first column
  [1,4,7], # middle column
  [2,5,8], # last column
  [0,4,8], # forward diagonal
  [2,4,6]  # reverse diagonal
]

def won?(board)
  WIN_COMBINATIONS.each do |comb|
    if (board[comb[0]] == board[comb[1]] &&
        board[comb[1]] == board[comb[2]] &&
        (board[comb[0]] == 'X' || board[comb[0]] == 'O'))
      return comb
    end
  end
  return nil
end

def full?(board)
  board.each do |x|
    if x != 'X' && x != 'O'
      return false
    end
  end
  return true
end

def draw?(board)
  full?(board) && !won?(board)
end

def over?(board)
  !!full?(board)
end

def winner(board)
  comb = won?(board)
  if comb
    return board[comb[0]]
  end
  return nil
end
