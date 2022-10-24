require 'diary_entry_example'

RSpec.describe DiaryEntryTwo do
    it "constructs" do
        entry = DiaryEntryTwo.new("my title", "my contents")
        expect(entry.title).to eq "my title"
        expect(entry.contents).to eq "my contents"
    end
   
    describe "#count_words" do
        it "Counts the number of words in an entry" do
            entry = DiaryEntryTwo.new("my title", "my contents")
            expect(entry.count_words).to eq 2
        end

        it "Returns 0 when contents is empty" do
            entry = DiaryEntryTwo.new("Thursday", "")
            expect(entry.count_words).to eq 0
        end
    end

    describe "#reading_time" do
        it "Returns an estimate for time to read, rounded up" do
            entry = DiaryEntry.new("Thursday", "Today. " * 550)
            expect(entry.reading_time(200)).to eq 3
        end  

        it "Fails when given a read time of 0" do
            entry = DiaryEntryTwo.new("Thursday", "Today. " * 550)
            expect { entry.reading_time(0) }.to raise_error "Reading speed must be above 0."
        end
    end

    describe "#reading_chunk" do
        context "with a contents readable within the time" do
            it "Returns the full contents." do
                entry = DiaryEntryTwo.new("my title", "one two three")
                chunk = entry.reading_chunk(200, 1) #2 wpm, 1 minute
                expect(chunk).to eq "one two three"
            end
        end

            it "Fails when given a read time of 0" do
                entry = DiaryEntryTwo.new("Thursday", "Today. " * 550)
                expect { entry.reading_chunk(0, 5) }.to raise_error "Reading speed must be above 0."
            end

        context "with a contents unreadable within the time" do
            it "Returns a readable chunk." do
                entry = DiaryEntryTwo.new("my title", "one two three")
                chunk = entry.reading_chunk(2, 1) #2 wpm, 1 minute
                expect(chunk).to eq "one two"
            end

            it "Returns the next chunk, next time we are asked." do
                entry = DiaryEntryTwo.new("my title", "one two three")
                entry.reading_chunk(2, 1)
                chunk = entry.reading_chunk(2, 1) #2 wpm, 1 minute
                expect(chunk).to eq "three"
            end
            
            it "Restarts once the whole contents has been read." do
                entry = DiaryEntryTwo.new("my title", "one two three")
                entry.reading_chunk(2, 1)
                entry.reading_chunk(2, 1)
                chunk = entry.reading_chunk(2, 1) #2 wpm, 1 minute
                expect(chunk).to eq "one two"
            end

            it "Restarts if it finishes exactly on the end." do
                entry = DiaryEntryTwo.new("my title", "one two three")
                entry.reading_chunk(2, 1)
                entry.reading_chunk(1, 1)
                chunk = entry.reading_chunk(2, 1) #2 wpm, 1 minute
                expect(chunk).to eq "one two"
            end
        end
    end

end