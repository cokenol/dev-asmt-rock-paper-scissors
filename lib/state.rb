require_relative 'game'

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

def end_game_message(player_one_choice, player_two_choice)
# return a message telling if player 1 or 2 won.
end
