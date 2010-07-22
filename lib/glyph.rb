
module Glyph
  def self.initialize_application()
  end

  def self.application()
    @@application
  end
end

require 'glyph/application'

Glyph.initialize_application()

