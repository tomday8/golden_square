=begin
Objective:
A method called count_words that takes a string as an 
argument and returns the number of words in that string.
=end

require 'count_words'

RSpec.describe "count_word method" do
    it 'Returns the number of words in a string' do
        words = count_words("This sentence will return the number 7.")
        expect(words).to eq 7
    end

    it 'Returns the number of words in a string' do
        words = count_words("I return 3.")
        expect(words).to eq 3
    end 
end