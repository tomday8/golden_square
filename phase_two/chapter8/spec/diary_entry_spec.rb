require "diary_entry"

RSpec.describe DiaryEntry do
    context "Given an entry" do
        it "constructs" do
            entry = DiaryEntry.new("my title", "my contents")
            expect(entry.title).to eq "my title"
            expect(entry.contents).to eq "my contents"
        end
    end

    describe "#count_words" do
        it "returns a words count" do
            entry = DiaryEntry.new("my title", "contents is written here")
            result = entry.count_words
            expect(result).to eq 4
        end

        it "returns 0 if contents is empty" do
            entry = DiaryEntry.new("my title", "")
            result = entry.count_words
            expect(result).to eq 0
        end
    end

    describe "#reading_time" do
        it "returns a reading time for that entry" do
            entry = DiaryEntry.new("my title", "contents is written here")
            result = entry.reading_time(2) #reading speed; 2 wpm
            expect(result).to eq 2
        end
    
        it "Fails when given a read time of 0" do
            entry = DiaryEntry.new("my title", "contents is written here")
            expect { entry.reading_time(0) }.to raise_error "Reading speed must be above 0."
        end

        it "rounds time up dependent on number of words provided" do
            entry = DiaryEntry.new("my title", "contents is now written here")
            result = entry.reading_time(2) #reading speed; 2 wpm
            expect(result).to eq 3
        end
    end

    describe "#reading_chunk" do
        it "returns a suitable chunk to read in a given time" do
            entry = DiaryEntry.new("my title", "contents is written here")
            result = entry.reading_chunk(2, 1) #reading speed; 2 wpm, reading time; 1 min
            expect(result).to eq "contents is"
        end
    end

    
end