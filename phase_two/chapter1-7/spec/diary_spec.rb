require 'diary'

RSpec.describe Diary do
    it 'Create a snippet with first five words then ...' do
        diary = Diary.new
        snippet = diary.make_snippet("This sentence will be trimmed down to the first five words.")
        expect(snippet).to eq "This sentence will be trimmed..."
    end
    it 'Returns a string five words or shorter' do
        diary = Diary.new
        snippet = diary.make_snippet("Only a short sentence.")
        expect(snippet).to eq "Only a short sentence."
    
    end
end