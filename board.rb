# Class Board, manage the board for both players

class Board
  ROWS_LENGTH = 7
  COLS_LENGTH = 7
  FOURINLINE = 4
  INITIAL_VALUE = 0

  def initialize
    @my_board = Array.new(ROWS_LENGTH) { Array.new(COLS_LENGTH, INITIAL_VALUE) }
  end

  def add_token(user, col)
    raise ArgumentError, 'Argument should not be zero' if user == INITIAL_VALUE
    nofinish = true
    row = 0
    while nofinish
      item = @my_board[row]
      if item[col].zero? # == 0
        item[col] = user
        nofinish = false
      end
      row += 1 if row < ROWS_LENGTH # then
      nofinish = false if row == ROWS_LENGTH # then
    end # until !finish
    row - 1
  end

  def board
    @my_board.dup # return a copy
  end

  def board=(new_board)
    @my_board = new_board
  end

  def check_if_there_is_winner(player_id)
    @my_board.each_with_index do |row, i|
      row.each_with_index do |_col, j|
        if @my_board[i][j] == player_id
          if horintally(i, j)
            return true
          elsif vertically(i, j)
            return true
          elsif diagonally(i, j)
            return true
          end
        end
      end
    end
  end

  def vertically(row, column)
    return false if row + FOURINLINE > ROWS_LENGTH

    player = @my_board[row][column]
    for index in 1..FOURINLINE - 1
      return false if @my_board[row + index][column] != player
    end
    true
  end

  def horintally(row, column)
    return false if column + FOURINLINE > COLS_LENGTH

    player = @my_board[row][column]
    for index in 1..FOURINLINE - 1
      return false if @my_board[row][column + index] != player
    end
    true
  end

  def diagonally_up_right(player, row, column)
    if column + FOURINLINE < COLS_LENGTH && row + FOURINLINE < ROWS_LENGTH
      for index in 1..FOURINLINE - 1
        return false if @my_board[row + index][column + index] != player
        end
      return true
    end
    false
  end

  def diagonally_up_left(player, row, column)
    if column - FOURINLINE >= 0 && row + FOURINLINE < ROWS_LENGTH
      for index in 1..FOURINLINE - 1
        return false if @my_board[row + index][column - index] != player
        end
      return true
    end
    false
  end

  def diagonally_down_right(player, row, column)
    if column + FOURINLINE < COLS_LENGTH && row - FOURINLINE >= 0
      for index in 1..FOURINLINE - 1
        return false if @my_board[row - index][column + index] != player
        end
      return true
    end
    false
  end

  def diagonally_down_left(player, row, column)
    if column - FOURINLINE >= 0 && row - FOURINLINE >= 0
      for index in 1..FOURINLINE - 1
        return false if @my_board[row - index][column - index] != player
        end
      return true
    end
    false
  end

  def diagonally(row, column)
    if row < 0 || column < 0 || row > ROWS_LENGTH || column > COLS_LENGTH
      return false
    end

    player = @my_board[row][column]

    return true if diagonally_up_right(player, row, column)

    return true if diagonally_up_left(player, row, column)

    return true if diagonally_down_right(player, row, column)

    return true if diagonally_down_left(player, row, column)

    false
  end
end
