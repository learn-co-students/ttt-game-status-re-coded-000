# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS=[[0,1,2],[3,4,5],[6,7,8],
                  [0,3,6],[1,4,7],[2,5,8],
                     [0,4,8],[2,4,6]]
def won?(board)
  WIN_COMBINATIONS.detect do |rezano|
    board[rezano[0]]==board[rezano[1]] &&
    board[rezano[1]]==board[rezano[2]] &&
    position_taken?(board,rezano[0])
end
end
def full?(board)
  board.all?do|rezano|
  rezano=="X"||rezano=="O"
  end
end
def draw?(board)
  full?(board)&&!won?(board)
end
def over?(board)

draw?(board)||won?(board)
end
def winner(board)
  rezano=won?(board)
  if rezano
    return board[rezano[0]]
  end
end
