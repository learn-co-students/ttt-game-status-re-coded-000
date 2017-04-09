# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [2,4,6]
]
# Helper Method
def position_taken?(board, location)
  !(board[location].nil? || board[location] == " ")
end
#=================================================
# Define your WIN_COMBINATIONS constant
def won?(board)
   WIN_COMBINATIONS.detect do |item|
    board[item[0]] == board[item[1]] && board[item[1]] == board[item[2]] && position_taken?(board, item[0])
   end
end
#================================================
def full?(board)
  board.all? {|item| item == "X" || item == "O"}
end
#================================================
def over?(board)
 won?(board) || full?(board)
 end
 #================================================
def draw?(board)
if !won?(board) && full?(board)
  true
else
  false
end
end
#================================================
def winner(board)
 if combo = won?(board)
  board[combo[0]]
 end
 end
