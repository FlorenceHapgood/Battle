require "game"

describe Game do

  let(:player_2) { double :player_class, :receive_damage => "Something" }
  let(:game) { described_class.new }

  describe "#attack" do
    it "takes 10 points from a player" do
      expect(game.attack(player_2)).to eq("Something")
      #attack(player_2)
      #expect(player_2).to receive(:receive_damage)
    end
  end
end
