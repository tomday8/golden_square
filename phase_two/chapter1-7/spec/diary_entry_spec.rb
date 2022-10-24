require 'diary_entry'

RSpec.describe DiaryEntry do
    it "Creates an entry in a diary including a title and contents" do
        entry = DiaryEntry.new("Thursday", "Today I have been working on the Golden Square.")
        expect(entry.title).to eq "Thursday"
    end
    it "Creates an entry in a diary including a title and contents" do
        entry = DiaryEntry.new("Thursday", "Today I have been working on the Golden Square.")
        expect(entry.contents).to eq "Today I have been working on the Golden Square."
    end

    describe "#count_words" do
    it "Counts the number of words in an entry" do
        entry = DiaryEntry.new("Thursday", "Today I have been working on the Golden Square.")
        expect(entry.count_words).to eq 9
    end
    it "Returns 0 when contents is empty" do
        entry = DiaryEntry.new("Thursday", "")
        expect(entry.count_words).to eq 0
    end
    end

    describe "#reading_time" do
    it "Returns an estimate for time to read" do
        entry = DiaryEntry.new("Thursday", "Today. " * 550)
        expect(entry.reading_time(200)).to eq 3
    end  
    it "Fails when given a read time of 0" do
        entry = DiaryEntry.new("Thursday", "Today. " * 550)
        expect { entry.reading_time(0) }.to raise_error "Reading speed must be above 0."
    end
    end

    describe "#reading_chunk" do
    it "Provides the user the given text to read in correct time allowance." do
        entry = DiaryEntry.new("Thursday", "Today. " * 550)
        chunk = entry.reading_chunk(200, 3)
        expect(chunk).to eq ("Today. " * 550)
    end
    it "Informs user there is nothing to read in time allocation" do
        entry = DiaryEntry.new("Thursday", "Today. " * 550)
        chunk = entry.reading_chunk(200, 2)
        expect(chunk).to eq "You do not have enough time to read any entries."
    end
end
   # it "Informs the user when all applicable chunks have been read."
    #entry = DiaryEntry.new("Thursday", "Today. " * 550)
    #    chunk = entry.reading_chunk(200, 3)
    #    expect(chunk).to eq ("Today. " * 550)
    #    expect(chunk).to eq "No more entries remaining."
    #end
end