require "diary"
require "diary_entry"

RSpec.describe "integration" do
    
    it "lists out the entries added" do
        diary = Diary.new
        diary_entry_1 = DiaryEntry.new("my title", "my contents")
        diary_entry_2 = DiaryEntry.new("my title 2", "my contents 2")
        diary.add(diary_entry_1)
        diary.add(diary_entry_2)
        result = diary.all
        expect(result).to eq [diary_entry_1, diary_entry_2 ]
    end
    
    describe "word counting behaviour" do
        it "can count the number of words in all contents" do
            diary = Diary.new
            diary_entry_1 = DiaryEntry.new("my title", "my contents")
            diary_entry_2 = DiaryEntry.new("my title 2", "my contents 2")
            diary.add(diary_entry_1)
            diary.add(diary_entry_2)
            result = diary.count_words
            expect(result).to eq 5
        end
    end
    
    describe "reading time behaviour" do 
        it "calculates the reading time for all entries" do
            diary = Diary.new
            diary_entry_1 = DiaryEntry.new("my title", "my contents 1")
            diary_entry_2 = DiaryEntry.new("my title 2", "my contents 2")
            diary.add(diary_entry_1)
            diary.add(diary_entry_2)
            result = diary.reading_time(2)
            expect(result).to eq 3
        end

        it "rounds time up dependent on number of words provided " do
            diary = Diary.new
            diary_entry_1 = DiaryEntry.new("my title", "my contents")
            diary_entry_2 = DiaryEntry.new("my title 2", "my contents 2")
            diary.add(diary_entry_1)
            diary.add(diary_entry_2)
            result = diary.reading_time(2)
            expect(result).to eq 3
        end

        it "Fails when given a read time of 0" do
            diary = Diary.new
            diary_entry = DiaryEntry.new("my title", "my contents")
            diary.add(diary_entry)
            expect { diary.reading_time(0) }.to raise_error "Reading speed must be above 0."
        end
    end

    describe "best reading time entry behaviour" do
        it "fails where wpm is 0" do
            diary = Diary.new
            entry = DiaryEntry.new("my title", "my contents")
            diary.add(entry)
            expect { diary.find_best_entry_for_reading_time(0, 1)}.to raise_error ("Reading speed must be above 0.")
        end
        
        context "where we have just one entry" do
            it "returns that entry where enough time given" do
                diary = Diary.new
                diary_entry = DiaryEntry.new("my title", "my contents")
                diary.add(diary_entry)
                result = diary.find_best_entry_for_reading_time(2, 1) #2wpm, 1min
                expect(result).to eq diary_entry
            end
        end

        context "with just one entry which is unreadable in the given time" do
            it "returns nil" do
                diary = Diary.new
                diary_entry = DiaryEntry.new("my title", "my contents longer")
                diary.add(diary_entry)
                result = diary.find_best_entry_for_reading_time(2, 1) #2wpm, 1min
                expect(result).to eq nil
            end
        end

        context "with multiple entries" do
            it "returns the longest readable entry in the given time" do
                diary = Diary.new
                best_entry = DiaryEntry.new("my title", "my contents")
                diary.add(DiaryEntry.new("my title", "contents"))
                diary.add(best_entry)
                diary.add(DiaryEntry.new("my title", "my longer contents"))
                diary.add(DiaryEntry.new("my title", "my even longer contents"))
                result = diary.find_best_entry_for_reading_time(2, 1)
                expect(result).to eq best_entry

            end
        end
    end
end 