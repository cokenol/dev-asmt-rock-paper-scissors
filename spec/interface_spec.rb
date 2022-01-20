require 'interface'
require 'pry-byebug'

RSpec.describe Interface do

  describe '#choose_mode' do
    it 'sends a prompt of Player vs PC mode to choose' do
      output = StringIO.new
      $stdout = output
      $stdin = StringIO.new("1\n")
      console_interface = Interface.new(output: output)
      console_interface.choose_mode
      expect(output.string).to include('Player vs PC')
    end

    it 'sends a prompt of PC vs PC mode to choose' do
      output = StringIO.new
      $stdout = output
      $stdin = StringIO.new("1\n")
      console_interface = Interface.new(output: output)
      console_interface.choose_mode
      expect(output.string).to include('PC vs PC')
    end

    it 'sends a prompt of exit mode to choose' do
      output = StringIO.new
      $stdout = output
      $stdin = StringIO.new("1\n")
      console_interface = Interface.new(output: output)
      console_interface.choose_mode
      expect(output.string).to include('Exit')
    end

    it 'should have an input for choosing modes' do
      input = StringIO.new("1\n")
      $stdin = input
      console_interface = Interface.new(input: input)
      console_interface.choose_mode

      expect(input.string).to include("1\n")
    end
  end
end
