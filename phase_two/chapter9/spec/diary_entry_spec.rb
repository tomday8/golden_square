require 'diary_entry'

RSpec.describe DiaryEntry do
    it "Constructs a diary entry" do
        entry = DiaryEntry.new("title", "contents")
        expect(entry.title).to eq "title"
        expect(entry.contents).to eq "contents"
    end

    it "Can count the number of words in an entry" do
        entry = DiaryEntry.new("title", "Some contents.")
        expect(entry.word_counter).to eq 2
    end

    it "Can calculate reading time" do
        entry = DiaryEntry.new("title", "Some contents.")
        result = entry.reading_time(2) # 2 wpm
        expect(result).to eq 1 #1 minute
    end

    it "returns an error message when reading speed is 0" do
        entry = DiaryEntry.new("title", "Some contents.")
        expect {entry.reading_time(0)}.to raise_error "Reading speed must be above 0."
    end
end