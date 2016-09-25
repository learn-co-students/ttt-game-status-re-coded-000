# Helper Method
def position_taken?(board, location)
  !(board[location].nil? || board[location] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS  = [[0,1,2],[3,4,5],[6,7,8],[0,3,6],[1,4,7],[2,5,8],[0,4,8],[2,4,6]]

def won?(board)
  c=0
  WIN_COMBINATIONS.each  do |a|

    if board.all? { |e| e==" " }
      return false

    else
      if board[a[0]] =="O" &&  board[a[1]] =="O" && board[a[2]] =="O"
        return a
      elsif board[a[0]] =="X" &&  board[a[1]] =="X" && board[a[2]] =="X"
        return a
      elsif board.none?{|e| e==" "} #draw
        return false#"draw"
      end
    end
  end
end

def full?(board)
 if board.none?{|e| e==" "} #draw
  return true
 else return false
 end
end

def draw?(board)
  if WIN_COMBINATIONS.detect{|i| i==won?(board)}
     won?(board)#return false
  elsif full?(board)
    return true
  elsif !won?(board) && !full?(board) #game in progress
    return false

  #!won?(board) && board.all?{|token| token == "X" || token == "O"}
else

  end
end
x=won?(["X", "O", "X", "O", "X", "O", "O", "O", "X"])
puts x.to_s#x[0].to_s + x[1].to_s + x[2].to_s
