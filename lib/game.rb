class Game
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
    return {length:length, orientation: orientation, row: row, col: col}
  end

  def ship_at?(x, y)
    false
  end
end
