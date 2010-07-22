
module Glyph
  module Ncurses
    class Window
      attr_reader :cursor
      attr_reader :document

      def initialize(document)
        @cursor = Cursor.new
        @document = document
      end

      def update()
        ::Ncurses.move(0, 0)
        ::Ncurses.addstr(@document.get_line(0))
        ::Ncurses.move(@cursor.position.y, @cursor.position.x)
      end
    end
  end
end
