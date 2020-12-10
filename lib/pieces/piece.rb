class Piece
  @color
  @@unicode_display = {}

  def initialize(color)
    @color = color
  end

  public

  def get_color
    puts @color
  end

  def unicode
    @@unicode_display[@color]
  end
end
