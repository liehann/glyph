
module Glyph
  class View
    attr_reader :cursor

    def initialize(window)
      @cursor = Cursor.new
      @window = window
    end

    def update
      @window.draw()
    end
  end
end

