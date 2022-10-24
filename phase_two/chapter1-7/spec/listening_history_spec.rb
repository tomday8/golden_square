require 'listening_history'

RSpec.describe ListeningHistory do
    context "When list is empty" do
        it "Returns an empty array" do
            history = ListeningHistory.new
            expect(history.list).to eq []
        end
    end

    context "When tracks are provided" do
        it "Adds a single a list" do
            history = ListeningHistory.new
            history.add_track("Great song")
            expect(history.list).to eq "Great song"
        end

        it "Adds multiple tracks to a list" do
            history = ListeningHistory.new
            history.add_track("New track")
            history.add_track("Great song")
            expect(history.list).to eq "New track, Great song"
        end

        it "Tells the user a track is already on the list" do
            history = ListeningHistory.new
            history.add_track("New track")
            result = history.add_track("New track")
            expect(result).to eq "This track is already in your listening history"
        end

        it "Provides user feedback a track has been added" do
            history = ListeningHistory.new
            result = history.add_track("Great song")
            expect(result).to eq "Great song, has been added to your listening history"
        end
    end

    context "When no track is provided" do
        it "Informs the user no track was provided" do
            history = ListeningHistory.new
            result = history.add_track("")
            expect(result).to eq "No track was provided"
        end
    end
end
    