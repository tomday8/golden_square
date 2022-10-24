require 'make_snippet'

RSpec.describe "make_snippet method" do
    it 'Creates a snippet with first five words then ...' do
        snippet = make_snippet("This sentence will be trimmed down to the first five words.")
        expect(snippet).to eq "This sentence will be trimmed..."
    end
    it 'Returns a string five words or shorter' do
        snippet = make_snippet("Only a short sentence.")
        expect(snippet).to eq "Only a short sentence."
    end
    it 'Returns an empty string when given an empty string' do
        snippet = make_snippet("")
        expect(snippet).to eq ""
    end
    
end