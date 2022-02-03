# Ruleset and outcome methods are defined here
class Game
  # Basic Rule set of the game is defined here
  def rule_set_basic
    {
      rock: %i[scissors],
      paper: %i[rock],
      scissors: %i[paper]
    }
  end

  # Extended rule set of the game
  def rule_set_extended
    {
      rock: %i[scissors lizard],
      paper: %i[rock spock],
      scissors: %i[paper lizard],
      lizard: %i[spock paper],
      spock: %i[scissors rock]
    }
  end

  # Inputs a choice and return a string with the choice and corresponding emoji
  def choice_emoji(choice)
    emoji = {
      rock: '✊',
      paper: '✋',
      scissors: '✂',
      lizard: '🦎',
      spock: '🖖'
    }
    "#{choice} #{emoji[choice.to_sym]}"
  end

  # Returns the outcome of the game here when givne player one and two choices.
  def outcome(player_one_choice, player_two_choice)
    if player_one_choice == player_two_choice
      'draw'
    elsif rule_set_extended[player_one_choice.to_sym].include?(player_two_choice.to_sym)
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
