require 'debugging'

RSpec.describe 'debugging method' do
    it "returns correctly when encoding" do
        result = encode("theswiftfoxjumpedoverthelazydog", "secretkey")
        expect(result).to eq "EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL"
    end
    it "returns correctly when decoding" do
        result = decode("EMBAXNKEKSYOVQTBJSWBDEMBPHZGJSL", "secretkey")
        expect(result).to eq "theswiftfoxjumpedoverthelazydog"
    end
end