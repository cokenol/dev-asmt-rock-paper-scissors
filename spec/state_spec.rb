require 'state'

describe "#state_of_the_game" do
  it "should return a choice as string" do
    expect(state_of_the_game('rock', 'paper', 1)).to be_a String
  end

  it "should return an interpolated String with player one and two choices" do
    expect(state_of_the_game('rock', 'paper', 1)).to match(/Your choice is rock/i)
    expect(state_of_the_game('rock', 'paper', 1)).to match(/PC choice is paper/i)
  end
end

# describe "#end_of_the_game" do
#   it "should return a choice as string" do
#     expect(random_choice).to be_a String
#   end

#   it "should return either rock paper or scissors" do
#     expect(%w[rock paper scissors]).to include (random_choice)
#   end
# end
