def get_most_common_letter(text)
    text.gsub!(/[^a-zA-Z]/, '') #added in rspec to include only letters.
    counter = Hash.new(0)
    text.chars.each do |char|
      counter[char] += 1
    end
   
    counter.sort_by { |k, v| -v }[0][0] #change the v to -v, removed .to_a
                                        #works the same as changing first index to [-1]
  
  end
  

puts get_most_common_letter("the roof, the roof, the roof is on fire!!!!!!!!!!!")
puts get_most_common_letter("a longer string to work with to test this")

  # Intended output:
  # 
  # > get_most_common_letter("the roof, the roof, the roof is on fire!")
  # => "o"
  