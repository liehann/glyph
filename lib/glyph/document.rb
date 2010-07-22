
module Glyph
  class Document
    attr_reader :lines

    def initialize(filename = nil)
      if filename
        text = File.read(filename)
      else
        text = ''
      end
      @lines = text.split
      @lines[0] ||= ''
      puts @lines.inspect
    end

    def append(pos, chr)
      @lines[pos.y] = @lines[pos.y].insert(pos.x, chr.chr)
    end

    def add_text(pos, text)
      @lines[pos.line] += text
    end

    def get_line(ix)
      @lines[ix]
    end
  end
end
