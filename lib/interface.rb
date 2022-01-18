# imports methods from state.rb file
require_relative 'state'

# imports methods from game.rb file
require_relative 'game'

# Method to prompt user to choose modes
def choose_mode
  continue = true
  while continue
    puts '=========================================='
    puts 'Modes:'
    # I should be able to play Player vs Computer.
    puts '1. Player vs PC'
    # I should be able to play Computer vs Computer.
    puts '2. PC vs PC'
    puts '3. Exit'
    puts 'Input 1, 2 or 3'
    choice = gets.chomp
    return choice.to_i if %w[1 2 3].include?(choice)
  end
end

# Method to display available choices when playing in Player vs PC
def display_choices(choices)
  clear
  puts '========================'
  puts 'Rock, paper or scissors?'
  choices.each_with_index do |choice, index|
    puts "#{index + 1} #{choice}"
  end
  choices.count.times do |time|
    print 'Input '
    print choices.count == time ? "or #{time}" : "#{time}, "
  end
end

# Method to prompt user to input a choice after displaying availables choices
def player_choose(choices)
  choice = gets.chomp.to_i - 1
  clear
  choices[choice]
end

# Method to clear terminal
def clear
  print `clear`
end

# Clear terminal once ruby interface.rb is run
clear

# First user prompt to choose a mode.
mode = choose_mode
continue = [1, 2].include?(mode)

# Clear terminal after mode is chosen
clear

# Loop to prompt user to choose a mode until 1 or 2 is not chosen
while continue
  # When 1. Player vs PC is chosen. Prompt user to choose rock, paper or scissors.
  choices = Result::HASH.keys
  display_choices(choices)
  player_one_choice = player_choose(choices) if mode == 1

  # When 2. PC vs PC is chosen. Player one choice is randomly chosen.
  player_one_choice = random_choice if mode == 2
  clear

  # Player two is default PC so the choice is always random.
  player_two_choice = random_choice

  # Prints the choices and result of the game.
  puts state_of_the_game(player_one_choice, player_two_choice, mode)
  puts end_of_the_game(player_one_choice, player_two_choice, mode)

  # Prompts users to choose mode again after the game is done.
  mode = choose_mode
  continue = [1, 2].include?(mode)
end

puts 'Exiting game. Bye. See you again.'
# Each new game should be a different game.
