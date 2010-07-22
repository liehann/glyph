
module Glyph
  class Application
    attr_reader :documents

    def initialize(gui)
      @gui = gui
      @documents = [Document.new()]
      @window = Ncurses::Window.new(@documents[0])
    end

    def focussed_window
      @window
    end

    def open_file(filename)
      @documents << Document.new(filename)
    end

    def run
      begin
        @gui.setup()
        @gui.run_event_loop()
      ensure
        @gui.teardown()
      end
    end
  end
end
