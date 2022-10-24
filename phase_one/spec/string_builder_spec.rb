require 'string_builder'

RSpec.describe StringBuilder do
    it "Creates a string" do
        string = StringBuilder.new
        string.add("Let's start this off.")
        string.add("We can add more as we go.")
        result = string.output
        expect(result).to eq "Let's start this off.We can add more as we go."
    end
    it "Checks the length of a string" do
        string = StringBuilder.new
        string.add "I'm a short string."
        result = string.size
        expect(result).to eq 19
    end

end