class Game
  def initialize
    @board = [
      ['x','x','x','x','x'],
      ['x','x','x','x','x'],
      ['x','x','x','x','x'],
      ['x','x','x','x','x'],
      ['x','x','x','x','x'],
    ]
    
  end
  def unplaced_ships
    ['###','####','#####']
  end

  def rows
    return 5
  end

  def cols
    return 5
  end

  def place_ship(length:, orientation:, row:, col:)
    # position = [row,col]
    # if length > 1
      count = 0
      while count < length
        if orientation == :horizontal
          @board[row-1][col-1+count] = 'S'
        else
          @board[row-1+count][col-1] = 'S'
        end
        count += 1
      end
    # @board[col-1][row-1] = 'S'
    p @board
    return {length:length, orientation: orientation, row: row, col: col}
  end

  def ship_at?(row, col)
    # p @board
    if @board[col-1][row-1] == 'S'
      # p 'TRUE'
      return true
    else
      # p 'FALSE'
      return false
    end
  end
end
