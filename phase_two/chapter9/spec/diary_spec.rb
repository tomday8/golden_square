require 'diary'

RSpec.describe Diary do
    it "initializes" do
        diary = Diary.new
        expect(diary).to eq diary
    end

    it "returns an empty array after intializing" do
        diary = Diary.new
        expect(diary.all_entries).to eq []  
    end

end