require 'game'

describe "#random_choice" do
  it "should return a choice as string" do
    expect(random_choice).to be_a String
  end

  it "should return either rock paper or scissors" do
    actual = random_choice
    expected = ""
    expect(actual).to eq (expected)
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
