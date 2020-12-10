class Pawn < Piece
  @@unicode_display = {
    black: "♟︎",
    white: "♙",
  }

  def initialize(color)
    super
  end
end
