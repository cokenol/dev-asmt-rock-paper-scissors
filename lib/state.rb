require_relative 'game'
require_relative 'results'

def state_of_the_game(player_one_choice, player_two_choice, mode)
  # return a message containing player 1's and player 2's states.
  case mode
  when 1
    player_one = 'Your choice'
    player_two = 'PC choice'
  when 2
    player_one = 'PC#1 choice'
    player_two = 'PC#2 choice'
  end
  "#{player_one} is #{choice_emoji(player_one_choice)}.\n#{player_two} is #{choice_emoji(player_two_choice)}."
end

def end_of_the_game(player_one_choice, player_two_choice, mode)
  # return a message telling if player 1 or 2 won.
  # return a message containing player 1's and player 2's states.
  case mode
  when 1
    player_one = 'You'
  when 2
    player_one = 'PC#1'
  end
  result = Result::HASH[player_one_choice.to_sym][player_two_choice.to_sym]
  "#{player_one} #{result}!"
end

def choice_emoji(choice)
  emoji = {
    rock: 'rock ✊',
    paper: 'paper ✋',
    scissors: 'scissors ✂'
  }
  emoji[choice.to_sym]
end
