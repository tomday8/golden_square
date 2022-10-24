require 'diary'

RSpec.describe Diary do
    context "initially" do
        it "initializes" do
            diary = Diary.new
            expect(diary).to eq diary
        end

        it "has an empty list of entries" do
            diary = Diary.new
            expect(diary.all).to eq []
        end

        it "returns a word count of 0" do
            diary = Diary.new
            expect(diary.count_words).to eq 0
        end
    end
end