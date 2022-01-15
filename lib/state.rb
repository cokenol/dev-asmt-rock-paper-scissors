require_relative 'game'
require_relative 'results'

def state_of_the_game(player_one_choice, player_two_choice, mode)
# return a message containing player 1's and player 2's states.
  case mode
  when 1
    player_one = "Your choice"
    player_two = "PC choice"
  when 2
    player_one = "PC#1 choice"
    player_two = "PC#2 choice"
  else

  end
  return "#{player_one} is #{player_one_choice}, #{player_two} is #{player_two_choice}"
end

def end_of_the_game(player_one_choice, player_two_choice, mode)
# return a message telling if player 1 or 2 won.
# return a message containing player 1's and player 2's states.
  case mode
  when 1
    player_one = "You"
    player_two = "PC"
  when 2
    player_one = "PC#1"
    player_two = "PC#2"
  else

  end
  result = Result::HASH[player_one_choice.to_sym][player_two_choice.to_sym]
  return "#{player_one} #{result}!"
end
