require "player"

describe Player do

  let(:player_1) { described_class.new("George") }
  let(:player_2) { described_class.new("Harry") }

  describe "#name" do
    it "returns it's own name" do
      expect(player_1.name).to eq("George")
    end
  end

  describe "#receive_damage" do
    it "takes 10 points off hit points of current player" do
      player_1.receive_damage
      expect(player_1.hit_points).to eq(50)
    end
  end

end
