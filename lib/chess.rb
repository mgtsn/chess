class Chess
  require "./lib/pieces/piece.rb"
  Dir["./lib/pieces/*"].each { |file| require file }

  @board
  @@player_colors = {
    white: :black,
    black: :white,
  }
  @@starting_player = :white

  private

  def initialize
    @board = create_board
    @current_player = @@starting_player
  end

  def populate_board(board)
    piece_order = ["r", "k", "b", "g", "q", "b", "k", "r"]
    board.each_with_index do |row, index|
      row[1] = Pawn.new(:white)
      row[6] = Pawn.new(:black)

      case piece_order[index]
      when "r"
        row[0] = Rook.new(:white)
        row[7] = Rook.new(:black)
      when "k"
        row[0] = Knight.new(:white)
        row[7] = Knight.new(:black)
      when "b"
        row[0] = Bishop.new(:white)
        row[7] = Bishop.new(:black)
      when "g"
        row[0] = King.new(:white)
        row[7] = King.new(:black)
      when "q"
        row[0] = Queen.new(:white)
        row[7] = Queen.new(:black)
      end
    end
    board
  end

  def create_board
    board = []
    columns = []

    8.times do
      columns.push(nil)
    end

    8.times do
      board.push(columns)
    end

    board = populate_board(board)
  end

  def switch_player
    @current_player = @@player_colors[@current_player]
  end

  def make_move
    input = gets.chomp
    input = input.split(" ")
    p input
  end

  def check_for_checkmate
  end

  def take_turn
    puts "Current player: #{@current_player}"
    make_move
    check_for_checkmate
    switch_player
  end

  public

  def play
    5.times do
      take_turn
    end
  end
end
