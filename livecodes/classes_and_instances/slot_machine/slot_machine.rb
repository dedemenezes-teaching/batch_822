class SlotMachine
  SCORE = {
    'joker' => 50,
    'star' => 40,
    'bell' => 30,
    'seven' => 20,
    'cherry' => 10
  }

  def initialize(reels)
    @reels = reels
  end

  def score
    reels_hash = {}
    @reels.each do |reel|
      reels_hash[reel] = 0 if reels_hash[reel].nil?
      reels_hash[reel] += 1
    end
    return 0 if reels_hash.size === 3 #=> [value, value, value]

    # {"cherry"=>3}
    # three of the same
    # ['cherry', 'cherry', 'cherry']
    if @reels.uniq.size == 1
      SCORE[@reels.first]
    elsif @reels.uniq.size == 2 && @reels.include?('joker')
      joker_count = @reels.count { |reel| reel == 'joker' }
      if joker_count == 2
      # two jokers + any other
      # ['joker', 'joker', 'star']
        SCORE['joker'] / 2
      else
        # two of the same + joker
        # ['star', 'star', 'joker']
        # ['star', 'joker', 'star']
        # ['joker', 'star', 'star']
        middle_reel = @reels.sort[1]
        SCORE[middle_reel] / 2
      end
    end
  end
end
