class Result
  attr_reader :rule_set

  def initialize
    @rule_set =
      {
        rock: [:scissors],
        paper: [:rock],
        scissors: [:paper]
      }
  end

  def outcome(player_one_choice, player_two_choice)
    if player_one_choice == player_two_choice
      'draw'
    elsif rule_set[player_one_choice.to_sym].include?(player_two_choice.to_sym)
      'win'
    else
      'lose'
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
