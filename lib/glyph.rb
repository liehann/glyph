
module Glyph
  def self.application=(app)
    @application = app
  end

  def self.application()
    @application
  end
end

require 'glyph/cursor'
require 'glyph/position'
require 'glyph/ncurses/window'
require 'glyph/document'
require 'glyph/application'
require 'glyph/ncurses/gui'
require 'glyph/keys'
require 'glyph/input_handler'
require 'glyph/commands/quit_command'
require 'glyph/commands/append_command'
require 'glyph/launcher'

launcher = Glyph::Launcher.new(ARGV)
launcher.launch_application

