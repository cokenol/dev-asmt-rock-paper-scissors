require 'state'

describe '#state_of_the_game' do
  it 'should return a choice as string' do
    expect(state_of_the_game('rock', 'paper', 1)).to be_a String
  end

  it 'should return an interpolated String with player one and two choices' do
    expect(state_of_the_game('rock', 'paper', 1)).to match(/Your choice is rock/i)
    expect(state_of_the_game('rock', 'paper', 1)).to match(/PC choice is paper/i)
  end
end

describe '#end_of_the_game' do
  it 'should return a choice as string' do
    expect(end_of_the_game('rock', 'paper', 1)).to be_a String
  end

  it 'should return the correct outcome' do
    expect(end_of_the_game('rock', 'paper', 1)).to match(/You lost!/i)
    expect(end_of_the_game('rock', 'scissors', 1)).to match(/You win!/i)
    expect(end_of_the_game('rock', 'rock', 1)).to match(/Draw/i)
    expect(end_of_the_game('paper', 'scissors', 1)).to match(/You lost!/i)
    expect(end_of_the_game('paper', 'rock', 1)).to match(/You win!/i)
    expect(end_of_the_game('paper', 'paper', 1)).to match(/Draw/i)
    expect(end_of_the_game('scissors', 'rock', 1)).to match(/You lost!/i)
    expect(end_of_the_game('scissors', 'paper', 1)).to match(/You win!/i)
    expect(end_of_the_game('scissors', 'scissors', 1)).to match(/Draw/i)
  end
end
