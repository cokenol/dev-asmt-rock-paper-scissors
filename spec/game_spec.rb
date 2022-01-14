require "black_jack"

describe "#pick_bank_score" do
  it "should return a number" do
    expect(pick_bank_score).to be_a Numeric
  end

  it "should give a number between 16 and 21" do
    scores = []
    100.times do
      score = pick_bank_score
      scores << score if (16..21).include?(score)
    end

    expect(scores.size).to eq(100)
  end
end


# Don’t know the game? ​h​ttps://en.wikipedia.org/wiki/Rock​paper​scissors​



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
