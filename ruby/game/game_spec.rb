require_relative 'game'

# rspec -fd game_spec.rb

describe Game do
  let(:game) { Game.new("hello") }

  it "stores the secret word as an array" do
    expect(game.secret).to eq ["h", "e", "l", "l", "o"]
  end

  it "secret word is turned into blanks in an array" do
    expect(game.blank).to eq ["_", "_", "_", "_", "_"]
  end

  it "the number of guesses is half the length of the secret word + 3" do
    expect(game.guess_count).to eq 5
  end

  it "checks to see if the guess is correct" do
    expect(game.check_guess("h")).to eq true
  end

  it "checks to see if guess is incorrect" do
    expect(game.check_guess("z")).to eq false
  end


end