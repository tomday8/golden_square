require "greet"

RSpec.describe "greet method" do
    it "greets the user with their name" do
        result = greet("John")
        expect(result).to eq "Hello, John!"
    end

    it "greets the user with their name" do
        result = greet("Jess")
        expect(result).to eq "Hello, Jess!"
    end
    it "greets the user with their name" do
        result = greet("Tom")
        expect(result).to eq "Hello, Tom!"
    end

end