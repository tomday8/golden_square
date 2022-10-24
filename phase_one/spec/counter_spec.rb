require 'counter'

RSpec.describe Counter do
    it "Reports 5 items counted" do
        counter = Counter.new
        counter.add(5)
        result = counter.report
        expect(result).to eq "Counted to 5 so far."
    end
    
    it "Reports 7 items counted" do
        counter = Counter.new
        counter.add(7)
        result = counter.report
        expect(result).to eq "Counted to 7 so far."
    end

    it "Reports a count of all items" do
        counter = Counter.new
        counter.add(5)
        counter.add(12)
        counter.add(50)
        expect(counter.report).to eq "Counted to 67 so far."
    end
end

#Note on third example, result variable can be removed,
#replaced with directly referencing the method.
#My preference is toward the seperate variable, I find this more readable.
