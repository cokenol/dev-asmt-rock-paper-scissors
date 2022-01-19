require 'interface'

RSpec.describe ConsoleInterface do

  describe '#choose_mode' do
    it 'sends a prompt question to output' do
      output = StringIO.new
      console_interface = ConsoleInterface.new(output: output)

      console_interface.choose_mode

      expect(output.string).to include("Player vs PC")
      expect(output.string).to include("PC vs PC")
      expect(output.string).to include("Exit")
    end
  end
end
