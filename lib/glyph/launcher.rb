require 'optparse'

module Glyph
  class Launcher
    def initialize(args)
      @args = args
      @options = parse_options(args)
    end

    def parse_options(args)
      options = {}
      OptionParser.new do |opts|
      end.parse!(args)
      options
    end

    def launch_application
      @input_handler = InputHandler.new()
      @gui = Ncurses::Gui.new(@input_handler)
      @application = Glyph::Application.new(@gui)
      Glyph.application = @application
      if @args[0]
        @application.open_file(args[0])
      end

      @application.run()
    end
  end
end
