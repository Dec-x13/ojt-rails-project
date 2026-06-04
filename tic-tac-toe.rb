# Player class to hold data
class Player
  attr_reader :name, :marker

  def initialize(name, marker)
    @name = name
    @marker = marker
  end
end

# Board class
class Board
  def initialize
    @cells = [1, 2, 3, 4, 5, 6, 7, 8, 9]
  end

  def display
    puts "\n"
    puts " #{@cells[0]} | #{@cells[1]} | #{@cells[2]} "
    puts '---+---+---'
    puts " #{@cells[3]} | #{@cells[4]} | #{@cells[5]} "
    puts '---+---+---'
    puts " #{@cells[6]} | #{@cells[7]} | #{@cells[8]} "
    puts "\n"
  end

  # Update if move is legal
  def update_cell(position, marker)
    index = position - 1
    if @cells[index].is_a?(Integer)
      @cells[index] = marker
      true
    else
      reutrn false # Cell is already taken
    end
  end

  def full?
    @cells.all? { |cell| cell.is_a?(String) }
  end

  def check_winner
    winnin_combinations = [
      [0, 1, 2], [3, 4, 5], [6, 7, 8], # Rows
      [0, 3, 6], [1, 4, 7], [2, 5, 8], # Columns
      [0, 4, 8], [2, 4, 6]             # Diagonals
    ]

    winnin_combinations.each do |combo|
      if @cells[combo[0]] == @cells[combo[1]] && @cells[combo[1]] == @cells[combo[2]]
        return @cells[combo[0]] # Return 'X' or 'O'
      end
    end
    nil
  end
end

# Game class
class Game
  def initialize
    @board = Board.new
    @player1 = Player.new('Player 1', 'X')
    @player2 = Player.new('Player 2', 'O')
    @current_player = @player1
  end

  def play
    puts 'Welcome to Comman Line Tic Tac Toe!'
    @board.display

    loop do
      take_turn
      @board.display

      if winner = @board.check_winner
        puts "#{winner} wins the game! Congrats #{@current_player.name}!"
        break
      elsif @board.full?
        puts "It's a draw! Well played"
        break
      end

      switch_player
    end
  end

  private

  def take_turn
    loop do
      print "#{@current_player.name} (#{@current_player.marker}), enter a number (1-9): "
      input = gets.chomp.to_i

      if input.between?(1, 9)
        # Attempt to update board. Return true if valid
        break if @board.update_cell(input, @current_player.marker)

        puts 'That space is already taken! Try again'

      else
        puts 'Invalid input. Please enter a number between 1 and 9'
      end
    end
  end

  def switch_player
    @current_player = @current_player == @player1 ? @player2 : @player1
  end
end

# Start the game
game = Game.new
game.play
