require 'ncurses'

module Glyph
  module Ncurses
    class Gui
      def initialize(input_handler)
        @input_handler = input_handler
      end

      def setup
        ::Ncurses.initscr
      end

      def teardown
        ::Ncurses.endwin
      end

      def run_event_loop()
        while true
          chr = ::Ncurses.stdscr.getch 
          if chr > 0
            @input_handler.on_keypress(chr)
          end
        end
      end
    end
  end
end

