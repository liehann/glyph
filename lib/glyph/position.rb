
module Glyph
  class Position
    attr_accessor :x
    attr_accessor :y

    def initialize(x = 0, y = 0)
      @x = x
      @y = y
    end

    def clone
      Position.new(@x, @y)
    end
  end
end
