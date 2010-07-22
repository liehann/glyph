
module Glyph
  class Document
    attr_reader :lines

    def initialize()
      @lines = []
    end

    def add_text(pos, text)
      @lines[pos.line] += text
    end
  end
end
