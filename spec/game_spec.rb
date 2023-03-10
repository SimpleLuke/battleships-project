require 'game'

describe Game do
  before(:each) do
    @game = Game.new
  end

  it 'returns an array of unplaced ships' do
    expect(@game.unplaced_ships).to eq ['###','####','#####'] 
  end

  it 'places a ship on a specific position' do
    result = @game.place_ship(
      length: 3,
      orientation: :vertical,
      row:3,
      col:3
    )
    expect(result).to eq(length: 3, orientation: :vertical, row: 3, col: 3) 
  end

  it 'places a ship on (1,1) and returns true when checking' do
    place = @game.place_ship(length: 1, orientation: :vertical, row: 1, col: 1)
    expect(@game.ship_at?(1,1)).to eq true
  end

  it 'places a 1x2 ship on the board' do
    place = @game.place_ship(length: 2, orientation: :horizontal, row: 1, col: 1)
  expect(@game.ship_at?(1,1)).to eq true
  expect(@game.ship_at?(2,1)).to eq true
    
  end

  it 'returns the number of rows of the board' do
    expect(@game.rows).to eq 5
  end

  it 'returns the number of cols of the board' do
    expect(@game.cols).to eq 5
  end

  it 'checks if the ship at that position' do
    expect(@game.ship_at?(1,1)).to eq false
  end
end
