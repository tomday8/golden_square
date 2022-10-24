require 'add_five'

RSpec.describe "add_five method" do
    it "adds 5 to 3 to return 8" do
        result = add_five(3)
        expect(result).to eq 8
    end
    it "adds 5 to 10 to return 15" do
        result = add_five(10)
        expect(result).to eq 15
    end
    it "adds 5 to 17 to return 22" do
        result = add_five(17)
        expect(result).to eq 22
    end
end