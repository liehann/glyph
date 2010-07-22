
module Glyph
  module Commands
    class AppendCommand
      def initialize(document, view, chr)
        @document = document
        @view = view
        @chr = chr
      end

      def execute()
        @document.append(@view.cursor.position, @chr)
        @view.cursor.move_left
        @view.update()
      end

      def undo()
      end
    end
  end
end

