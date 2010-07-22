
module Glyph
  class Cursor
    attr_reader :position

    def initialize
      @position = Position.new()
    end

    def move_left()
      @position.x += 1
    end

    def move_right()
      @position.x -= 1
    end
  end
end
