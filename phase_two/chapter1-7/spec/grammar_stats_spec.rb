require 'grammar_stats'

RSpec.describe GrammarStats do

    context "When given a sentence with correct grammar" do
        it "Returns true" do
            grammarstats = GrammarStats.new
            result = grammarstats.check("This string is correct!")
            expect(result).to eq true
        end
    end
    
    context "When given an incorrect sentence" do
        it "Returns false when not punctuated but with capitalisation" do
            grammarstats = GrammarStats.new
            result = grammarstats.check("This string is not correct")
            expect(result).to eq false
        end

        it "Returns false when not capitalised but with punctuation" do
            grammarstats = GrammarStats.new
            result = grammarstats.check("this string is not correct!")
            expect(result).to eq false
        end

        it "Returns false when neither capitalised or punctuated" do
            grammarstats = GrammarStats.new
            result = grammarstats.check("this string is not correct")
            expect(result).to eq false
        end

        it "Returns false with an empty string" do
            grammarstats = GrammarStats.new
            result = grammarstats.check("")
            expect(result).to eq false
        end
    end

    context "Returns a percentage of correct texts" do
        it "Returns an integer of checked texts" do
            grammarstats = GrammarStats.new
            grammarstats.check("This string is correct!")
            grammarstats.check("this is not")
            grammarstats.check("this is not")
            grammarstats.check("this is not")  
            result = grammarstats.percentage_good
            expect(result).to eq 25
        end

        it "Returns an integer of checked texts" do
            grammarstats = GrammarStats.new
            grammarstats.check("This string is correct!")
            grammarstats.check("This string is correct.")
            grammarstats.check("This string is correct?")
            grammarstats.check("this is not")  
            grammarstats.check("this is not")  
            result = grammarstats.percentage_good
            expect(result).to eq 60
        end

        it "Ignore an empty input when returning percentage" do
            grammarstats = GrammarStats.new
            grammarstats.check("This string is correct!")
            grammarstats.check("this is not")
            grammarstats.check("this is not")
            grammarstats.check("this is not") 
            grammarstats.check("") 
            result = grammarstats.percentage_good
            expect(result).to eq 25
        end
    end
end