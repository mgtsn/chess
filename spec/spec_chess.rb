require "./lib/chess.rb"

describe Chess do
  describe "#initialize" do
    subject(:chess) { Chess.new }
    it "is a Chess object" do
      expect(chess).to be_a(Chess)
    end
  end

  describe "#create_board" do
  end
end
