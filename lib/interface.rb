# imports methods from state.rb file
require_relative 'state'

# imports methods from game.rb file
require_relative 'game'

def choose_mode
  # Objective
  continue = true
  while continue
    puts '=========================================='
    puts 'Modes:'
    # I should be able to play Player vs Computer.
    puts '1. Player vs PC'
    # I should be able to play Computer vs Computer.
    puts '2. PC vs PC'
    puts '3. Exit'
    puts '=========================================='
    puts 'Please choose 1 or 2'
    choice = gets.chomp
    return choice.to_i if %w[1 2 3].include?(choice)
  end
end

def player_choose
  puts '======================'
  puts '1. Rock'
  puts '2. Paper'
  puts '3. Scissors'
  puts 'Type 1, 2 or 3'
  choice = gets.chomp.to_i - 1
  clear
  %w[rock paper scissors][choice]
end

def clear
  print `clear`
end

continue = true
clear
mode = choose_mode
clear
while continue && [1, 2].include?(mode)
  player_one_choice = player_choose if mode == 1
  player_one_choice = random_choice if mode == 2
  clear
  player_two_choice = random_choice
  puts state_of_the_game(player_one_choice, player_two_choice, mode)
  puts end_of_the_game(player_one_choice, player_two_choice, mode)
  mode = choose_mode
  continue = [1, 2].include?(mode)
end

puts 'Exiting game. Bye. See you again.'
# Each new game should be a different game.
# The game is a command line application.
