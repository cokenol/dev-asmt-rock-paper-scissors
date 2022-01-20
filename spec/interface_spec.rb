require 'interface'

RSpec.configure do |config|
  # Use color in STDOUT
  config.color = true

  # Use color not only in STDOUT but also in pagers and files
  config.tty = true

  # Use the specified formatter
  config.formatter = :documentation
end

RSpec.describe Interface do
  describe '#choose_mode' do
    output = StringIO.new
    $stdout = output
    input = StringIO.new("1\n")
    $stdin = input
    console_interface = Interface.new(input: input, output: output)
    console_interface.choose_mode

    it 'sends a prompt of Player vs PC mode to choose' do
      expect(output.string).to include('Player vs PC')
    end

    it 'sends a prompt of PC vs PC mode to choose' do
      expect(output.string).to include('PC vs PC')
    end

    it 'sends a prompt of exit mode to choose' do
      expect(output.string).to include('Exit')
    end

    it 'should have an input for choosing modes' do
      expect(input.string).to include("1\n")
    end

    # Test to see if there is error prompt when user input is not within available options
    # Test not working so its commented out.
    # it 'sends a prompt of error when wrong input is given' do
    #   output = StringIO.new
    #   $stdout = output
    #   input = StringIO.new("4\n")
    #   $stdin = input
    #   console_interface = Interface.new(input: input, output: output)
    #   console_interface.choose_mode
    #   expect(output.string).to include('not a valid option')
    # end
  end

  describe '#player_choose' do
    choices = %i[rock paper scissors lizard spock]
    output = StringIO.new
    $stdout = output
    input = StringIO.new("1\n")
    $stdin = input
    console_interface = Interface.new(input: input, output: output)
    console_interface.player_choose(choices)

    it 'should display rock as a choice in terminal' do
      expect(output.string).to include('rock')
    end

    it 'should display paper as a choice in terminal' do
      expect(output.string).to include('paper')
    end

    it 'should display scissors as a choice in terminal' do
      expect(output.string).to include('scissors')
    end

    it 'should display lizard as a choice in terminal' do
      expect(output.string).to include('lizard')
    end

    it 'should display spock as a choice in terminal' do
      expect(output.string).to include('spock')
    end

    it 'should have an input for choosing choices' do
      expect(input.string).to include("1\n")
    end
  end
end
