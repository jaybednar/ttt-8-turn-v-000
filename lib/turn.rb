def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def input_to_index(input)
  index = input.to_i - 1 
  return index
end

def position_taken?(board, index)
  if board[index] == " " || board[index] == "" || board[index] == nil 
    return false 
  else 
    return true 
  end 
end

def valid_move?(board, index)
  if index.between?(0,8) && !position_taken?(board, index)
    return true 
  elsif index.between?(0,8) && position_taken?(board, index) 
    return false 
  else 
    return false 
  end
end

def move(board, index, marker = "X")
  if valid_move?(board, index)
    board[index] = marker
  end
end

def turn(board)
  puts "Please enter 1-9:"
  input = gets.strip
  index = input_to_index(input)
  if move(board, index, marker = "X")
    display_board(board)
  else 
    turn(board)
  end
end 