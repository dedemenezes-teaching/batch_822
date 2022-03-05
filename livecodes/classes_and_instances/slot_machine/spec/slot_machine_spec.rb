require_relative '../slot_machine'

describe SlotMachine do
  SCORE = {
    'joker' => 50,
    'star' => 40,
    'bell' => 30,
    'seven' => 20,
    'cherry' => 10
  }


  context "#score" do
    it "returns 0 if the 3 reels are different" do
      slot_machine = SlotMachine.new(['joker', 'star', 'bell'])
      expect(slot_machine.score).to eq(0)
    end

    SCORE.each do |reel, score|
      # same three
      it "return #{score} if the reels are #{reel}, #{reel}, #{reel}" do
        slot_machine = SlotMachine.new([reel, reel, reel])
        expect(slot_machine.score).to eq(score)
      end


      next if reel == 'joker'
      # two equal + joker
      it "returns #{score / 2} if there are 2 #{reel}'s and 1 joker" do
        slot_machine = SlotMachine.new([reel, reel, 'joker'])
        expect(slot_machine.score).to eq(score / 2)
      end
    end
    SCORE.keys.each do |reel|
      next if reel == 'joker'
      it "returns 25 if there are 2 jokers and 1 #{reel}" do
        slot_machine = SlotMachine.new(['joker', 'joker', reel])
        expect(slot_machine.score).to eq(25)
      end
    end
  end
end
