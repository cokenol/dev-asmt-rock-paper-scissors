class State
  # Inputs a choice and return a string with the choice and corresponding emoji
  def choice_emoji(choice)
    emoji = {
      rock: 'rock ✊',
      paper: 'paper ✋',
      scissors: 'scissors ✂'
    }
    emoji[choice.to_sym]
  end

  def random_choice(result)
    # Return a random choice of rock, paper or scissors
    result.sample.to_s
  end

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

  def end_of_the_game(player_one_choice, player_two_choice, mode, result)
    # return a message telling if player 1 or 2 won.
    case mode
    when 1
      player_one = 'You'
    when 2
      player_one = 'PC#1'
    end
    "#{player_one} #{result.outcome(player_one_choice, player_two_choice)}!"
  end
end
