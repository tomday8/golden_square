# File: lib/diary.rb
class Diary
    def initialize
        @entries = []
    end
  
    def add(entry) # entry is an instance of DiaryEntry
        @entries << entry
    end
  
    def all
        return @entries
    end
  
    def count_words
 
        return @entries.sum(&:count_words)
    end
  
    def reading_time(wpm) 
        # return @entries.sum do |entry|
        #     entry.reading_time(wpm)
        # end               <- FYI, did not work as pulls data from other class which is rounded up.
        fail "Reading speed must be above 0." unless wpm.positive?
        return (count_words / wpm.to_f).ceil 
    end
  
    def find_best_entry_for_reading_time(wpm, minutes)
        
        return readable_entries(wpm, minutes).max_by do |entry|
            entry.count_words
        #Can be refactored:
        #readable_entries(wpm, minutes).max_by(&:count_words)
        end
        
    end

    private

    def readable_entries(wpm, minutes)
        return @entries.filter do |entry|
            entry.reading_time(wpm) <= minutes
        end
    end
end