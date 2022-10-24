# {{PROBLEM}} Class Design Recipe

# 1. Describe the Problem

# As a user
# So that I can keep track of my music listening
# I want to add tracks Ive listened to and see a list of them.

# 2. Design the Class Interface
 
class ListeningHistory
    def initialize
        @history = []
    end

    def add_track(track)
        #unless track 
        if track == ""
            return "No track was provided"
        elsif @history.include?(track)
            return "This track is already in your listening history"
        else
            @history << track
            return "#{track}, has been added to your listening history"
        end
    end

    def list
        if @history.empty? == true
            return @history
        else
        return @history.join(", ")
        end
    end

end

# 3. Create Examples as Tests

# "Will store a track"
# "Will store multiple tracks"
# "Will provide user a list of tracks"
# "Will provide user feedback when no empty string provided "

# 4. Implement the Behaviour

# After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.