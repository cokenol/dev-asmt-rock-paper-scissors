require 'interface'
require 'pry-byebug'

RSpec.describe Interface do

  describe '#choose_mode' do
    it 'sends a prompt question to output' do
      output = StringIO.new
      console_interface = Interface.new(output: output)
      console_interface.choose_mode
      expect(output.string).to include('Player vs PC')
      # expect(output.string).to include("Exit")
    end

    it 'should have an input' do
      input = StringIO.new("1\n")
      console_interface = Interface.new(input: input)
      console_interface.choose_mode

      expect(input.string).to include("1\n")
    end
  end
end
