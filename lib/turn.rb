def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
 end

 def input_to_index(user_input)
   user_input.to_i - 1
 end

 def position_taken?(board, index)
   if board[index] == " "
     false
   elsif board[index] == ""
     false
   elsif board[index] == "X"
     true
   elsif board[index] == "O"
     true
   else
     false
   end
 end

 def between?(index)
   if index >= 0 && index <= 8
     true
   else
     false
   end
 end

 def valid_move?(board, index)
   if between?(index) == true && position_taken?(board, index) == false
   true end
 end

def move(board, index, value = "X")
  board[index]= value
end

def turn(board)
  puts "Please enter 1-9:"
  user_input = gets.strip
  if valid_move?(board, input_to_index(user_input))
    true
    move(board, index, value = "X")
  end
end
