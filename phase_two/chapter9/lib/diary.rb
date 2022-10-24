class Diary
    def initialize
        @entries = []
    end

    def add(entry)
        @entries << entry
    end

    def all_entries
        return @entries
    end

    def word_count
        @entries.each do |entry|
            return entry.word_counter
        end
    end

    def readable_entry(wpm, mins)
        @entries.each do |entry|
            if entry.reading_time(wpm) == mins 
                return entry.contents
            else
                return "You do not have enough time to read any entries."
            end
        end
    end
end