require 'diary'
require 'diary_entry'
require 'phone_numbers'

RSpec.describe 'Diary Integration' do
    context "given a diary entry" do
        it "is added to the diary" do
            diary = Diary.new
            entry_1 = DiaryEntry.new("A Title", "Some contents.")
            entry_2 = DiaryEntry.new("A Title", "Some more contents here.")
            diary.add(entry_1)
            diary.add(entry_2)
            expect(diary.all_entries).to eq [entry_1, entry_2]
        end

        it "can identify the number of words in an entry" do
            diary = Diary.new
            entry_1 = DiaryEntry.new("A Title", "Some contents.")
            diary.add(entry_1)
            result = diary.word_count # <- May need a seperate method in Diary?
            expect(result).to eq 2
        end
    end

    context "given a single entry" do
        it "can return that entry when the correct time to read it is given" do
            diary = Diary.new
            entry_1 = DiaryEntry.new("A Title", "Some contents.")
            diary.add(entry_1)
            result = diary.readable_entry(2, 1) #Can read 2 wpm, have 1 minute available
            expect(result).to eq "Some contents."
        end
    end

    context "given multiple entries where only one can be read in the alloted time" do
        it "returns the readable entry" do
            diary = Diary.new
            entry_1 = DiaryEntry.new("A Title", "Some contents.")
            entry_2 = DiaryEntry.new("Second Title", "Some more contents.")
            diary.add(entry_1)
            diary.add(entry_2)
            result = diary.readable_entry(2, 1) #Can read 2 wpm, have 1 minute available
            expect(result).to eq "Some contents."
        end
    end

    context "without enough time to read any entries" do
        it "returns a message informing the user" do
            diary = Diary.new
            entry_1 = DiaryEntry.new("A Title", "Lots of contents.")
            entry_2 = DiaryEntry.new("Second Title", "Some more contents.")
            diary.add(entry_1)
            diary.add(entry_2)
            result = diary.readable_entry(2, 1) #Can read 2 wpm, have 1 minute available
            expect(result).to eq "You do not have enough time to read any entries."
        end
    end

    context "given an entry with a phone number" do
        it "can identify and return the number" do
            diary = Diary.new
            numbers_scan = PhoneNumbers.new
            entry = DiaryEntry.new("A Title", "Some contents with a number 07800800800.")
            diary.add(entry)
            numbers_scan.split_entries(diary)
            result = numbers_scan.list
            expect(result).to eq ["07800800800"]
        end
    end

    context "given multiple entries with multiple phone numbers" do
        it "can store multiple phone numbers" do
            diary = Diary.new
            numbers_scan = PhoneNumbers.new
            entry_1 = DiaryEntry.new("A Title", "Some contents with a number 07800800800.")
            entry_2 = DiaryEntry.new("A Title", "Some more contents here with a number 07900900900.")
            diary.add(entry_1)
            diary.add(entry_2)
            numbers_scan.split_entries(diary)
            result = numbers_scan.list
            expect(result).to eq ["07800800800", "07900900900"]
        end

        it "does not store incorrect numbers" do
            diary = Diary.new
            numbers_scan = PhoneNumbers.new
            entry_1 = DiaryEntry.new("A Title", "Some contents with a number 07800800800.")
            entry_2 = DiaryEntry.new("A Title", "Some more contents here with a number 07900900900.")
            entry_3 = DiaryEntry.new("My Title", "Some contents")
            entry_4 = DiaryEntry.new("My Title", "Some contents with an incorrect number, 07900900")
            diary.add(entry_1)
            diary.add(entry_2)
            diary.add(entry_3)
            diary.add(entry_4)
            numbers_scan.split_entries(diary)
            result = numbers_scan.list
            expect(result).to eq ["07800800800", "07900900900"]
        end
    end
end