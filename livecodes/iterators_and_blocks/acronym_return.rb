def acronymize(sentence)
  # run_this_code IF condition == true
  return '' if sentence.empty?

  # split the sentence on white spaces store in words variable
  words = sentence.split(' ')
  # iterate over words, for each, select the first letters
  acronym = words.map do |word|
    word[0]
  end
  # join the words array and  upcase
  acronym.join.upcase
end

### If you spot this pattern    ###
### think about which iterator  ###
### you can use instead of each ###

# new_array = []
# elements.each do |element|
#   new_array << element
# end
