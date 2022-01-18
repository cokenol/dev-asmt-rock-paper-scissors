require_relative "helper/file_helper.rb"

begin
  require 'state'
  require 'result'
  rescue LoadError
end

state_helper = FileHelper.new(
  file_name: 'state',
  class_name: 'State'
)

describe "State", if: state_helper.file_and_class_valid? do

  let(:state) { State.new }
  let(:result) { Result.new }

  describe '#state_of_the_game' do
    it 'should return a choice as string' do
      expect(state.state_of_the_game('rock', 'paper', 1)).to be_a String
    end

    it 'should return an interpolated String with player one and two choices' do
      expect(state.state_of_the_game('rock', 'paper', 1)).to match(/Your choice is rock/i)
      expect(state.state_of_the_game('rock', 'paper', 1)).to match(/PC choice is paper/i)
    end
  end

  describe '#end_of_the_game' do
    it 'should return as string' do
      expect(state.end_of_the_game('rock', 'paper', 1, result)).to be_a String
    end

    it 'should return the correct outcome' do
      expect(state.end_of_the_game('rock', 'paper', 1, result)).to match(/You lost!/i)
      expect(state.end_of_the_game('rock', 'scissors', 1, result)).to match(/You win!/i)
      expect(state.end_of_the_game('rock', 'rock', 1, result)).to match(/Draw/i)
      expect(state.end_of_the_game('paper', 'scissors', 1, result)).to match(/You lost!/i)
      expect(state.end_of_the_game('paper', 'rock', 1, result)).to match(/You win!/i)
      expect(state.end_of_the_game('paper', 'paper', 1, result)).to match(/Draw/i)
      expect(state.end_of_the_game('scissors', 'rock', 1, result)).to match(/You lost!/i)
      expect(state.end_of_the_game('scissors', 'paper', 1, result)).to match(/You win!/i)
      expect(state.end_of_the_game('scissors', 'scissors', 1, result)).to match(/Draw/i)
    end
  end
end
# Technical constraints:
# ● The solution should be easily runnable from the command line.
# ● ​Third​-party or external libraries should only be used for tests.

# Things to consider
# ● Mention setup and execution instruction in a README file.
# ● We are keen to see how much you think is enough, and how much would go into a Minimum Viable Product. As a guide, ​elegant and simple​ wins over feature-rich every time.
# ● Do you ​test drive your code​? This is something we value and we will be looking for telling indicators of such in the code you produce.
# ● Do you care about how ​easy is for others to understand your code? Try to think if others would easily pick up from where you left.
# ● We also ​consider the extensibility of the code produced. A well-factored code should be easier to extend. https://en.wikipedia.org/wiki/Rock​paper​scissors​lizard​Spock ​may be a natural extension.
# ● Follow ​the principles and general conventions of your programming language of choice. Use the language which you feel most comfortable with, but please do ​refrain from using esoteric languages​.
# ● We are expecting a ​well-modelled solution​. Additionally, any indicator of design (​DDD, or design patterns) would make us smile.
