require "report_length"

RSpec.describe "report_length method" do
    it "Checks the length of string in characters" do
        result = report_length("This string contains 35 characters!")
        expect(result).to eq "This string was 35 characters long."
    end

    it "Checks the length of string in characters" do
        result = report_length("Short sentence.")
        expect(result).to eq "This string was 15 characters long."
    end
end

