class Result
  def rule_set
    {
      rock: %i[scissors lizard],
      paper: %i[rock spock],
      scissors: %i[paper lizard],
      lizard: %i[spock paper],
      spock: %i[scissors rock]
    }
  end

  def outcome(player_one_choice, player_two_choice)
    if player_one_choice == player_two_choice
      'draw'
    elsif rule_set[player_one_choice.to_sym].include?(player_two_choice.to_sym)
      'win'
    else
      'lost'
    end
  end
end
# Rock crushes Lizard
# Rock crushes Scissors
# Paper covers Rock
# Paper disproves Spock
# Scissors cuts Paper
# Scissors decapitates Lizard
# Lizard poisons Spock
# Lizard eats Paper
# Spock smashes Scissors
# Spock vaporizes Rock
