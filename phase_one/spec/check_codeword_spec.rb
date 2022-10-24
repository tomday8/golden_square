require 'check_codeword'

RSpec.describe "check_codeword method" do
    it "checks a valid codeword" do
        result = check_codeword("horse")
        expect(result).to eq "Correct! Come in."
    end
    it "checks a similar word, returns Close, but nope." do
        result = check_codeword("home")
        expect(result).to eq "Close, but nope."
    end
    it "checks incorrect word, returns WRONG!" do
        result = check_codeword("route")
        expect(result).to eq "WRONG!"
    end
end