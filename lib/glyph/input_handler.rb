
module Glyph
  class InputHandler
    def on_keypress(key)
      command = nil
      if key == Keys::KEY_Q
        command = Commands::QuitCommand.new()
      elsif key == Keys::KEY_A || key == Keys::KEY_B || key == Keys::KEY_C
        window = Glyph.application.focussed_window
        document = window.document
        command = Commands::AppendCommand.new(document, window, key)
      end
      
      if command
        command.execute()
      end
    end
  end
end
