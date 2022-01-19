class State
  # Return a random choice of from given input of arrays
  def random_choice(result)
    result.sample.to_s
  end

  # Return a message containing player 1's and player 2's states.
  def state_of_the_game(player_one_choice, player_two_choice, mode, game)
    case mode
    when 1
      player_one = 'Your choice'
      player_two = 'PC choice'
    when 2
      player_one = 'PC#1 choice'
      player_two = 'PC#2 choice'
    end
    "#{player_one} is #{game.choice_emoji(player_one_choice)}.\n#{player_two} is #{game.choice_emoji(player_two_choice)}."
  end

  # Return a message telling if player 1 or 2 won.
  def end_of_the_game(player_one_choice, player_two_choice, mode, result)
    case mode
    when 1
      player_one = 'You'
    when 2
      player_one = 'PC#1'
    end
    "#{player_one} #{result.outcome(player_one_choice, player_two_choice)}!"
  end
end
