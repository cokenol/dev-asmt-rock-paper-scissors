# imports class from state.rb file
require_relative 'state'

# imports class from game.rb file
require_relative 'game'

# imports class from view.rb file
require_relative 'view'

require 'pry-byebug'

class Interface
  def initialize(input: $stdin, output: $stdout)
    # Instantiating a game and state instance
    @input = input
    @output = output
    @game = Game.new
    @state = State.new
    @view = View.new
    @game_modes = { 1 => 'Player vs PC',
                    2 => 'PC vs PC',
                    3 => 'Player vs Player',
                    4 => 'Exit' }
    @rules_modes = { 1 => 'Basic',
                    2 => 'Extended'}
  end
  # Method to prompuser to choose basic or extended rule_set
  def basic_or_extended
    choice = nil
    # Loops until 1 or 2 is chosen.
    until @rules_modes.keys.include?(choice)
      # Display modes to be chosen
      @view.display(@rules_modes.values)
      # Prompts user to choose mode
      choice = @view.ask_input
      # If input other 1, 2, or 3 is given, clears screen, outputs error msg.
      @view.display_error(choice, @rules_modes.keys)
    end
    choice
  end
  # Method to prompt user to choose modes
  def choose_mode
    choice = nil
    # Loops until 1, 2, or 3 is chosen.
    until @game_modes.keys.include?(choice)
      # Display modes to be chosen
      @view.display(@game_modes.values)
      # Prompts user to choose mode
      choice = @view.ask_input
      # If input other 1, 2, or 3 is given, clears screen, outputs error msg.
      @view.display_error(choice, @game_modes.keys)
    end
    choice
  end

  # Method to clear terminal
  def clear
    # print `clear`
    system('clear') || system('cls')
  end

  # Actual player chooses rock, paper, scissors, lizard or spock.
  def player_choose(choices)
    # clear
    choice = nil
    until choices.include?(choice)
      @view.display(choices)
      number_inputted = @view.ask_input
      choice = choices[number_inputted - 1] if number_inputted.positive? && number_inputted <= 5
      @view.display_error(choice, choices)
    end
    choice.to_s
  end

  # Run game method
  def run_game
    # Clear terminal once ruby interface.rb is run
    clear

    # Prompt user to choose rule set type
    rules = basic_or_extended
    case rules
      when 1
        rules_chosen = @game.rule_set_basic.keys
      when 2
        rules_chosen = @game.rule_set_extended.keys
    end

    # Clear terminal
    clear

    # First user prompt to choose a mode
    mode = choose_mode
    loop_game = @game_modes.keys.first(@game_modes.count - 1).include?(mode)

    # Clear terminal after mode is chosen
    clear

    # Loop to prompt user to choose a mode
    while loop_game
      choices = rules_chosen

      # When 1. Player vs PC is chosen. Prompt user to choose rock, paper or scissors.
      player_one_choice = player_choose(choices) if [1, 3].include?(mode)

      # When 2. PC vs PC is chosen. Player one choice is randomly chosen.
      player_one_choice = @state.random_choice(choices) if mode == 2
      clear

      # Player two is PC when mode is 1 or 2.
      player_two_choice = @state.random_choice(choices) if [1, 2].include?(mode)

      # Player two is player when mode is 3.
      player_two_choice = player_choose(choices) if mode == 3

      # Prints the choices chosen and result of the game.
      puts @state.state_of_the_game(player_one_choice, player_two_choice, mode, @game)
      puts @state.end_of_the_game(player_one_choice, player_two_choice, mode, @game)

      # Prompts users to choose mode again after the game is done.
      mode = choose_mode

      # Loops the game if 1, 2 or 3 is chosen. Other inputs will exit the game.
      loop_game = [1, 2, 3].include?(mode)
    end

    puts 'Exiting game. Bye. See you again.'
    # Each new game should be a different game.
  end
end

# Instantiating new interface instance when ruby lib/interface.rb is run
# interface = Interface.new

# # Runs game when ruby lib/interface.rb is run
# # interface.run_game

# interface.basic_or_extended
