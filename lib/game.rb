require_relative 'results'

  def random_choice
    # Return a random choice of rock, paper or scissors
    result = Result.new
    result.rule_set.keys.sample.to_s
  end
