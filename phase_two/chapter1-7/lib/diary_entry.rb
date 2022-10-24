class DiaryEntry
    def initialize(title, contents) # title, contents are strings
      @title = title
      @contents = contents# ...
    end
  
    def title
      return @title # Returns the title as a string
    end
  
    def contents
      return @contents # Returns the contents as a string
    end
  
    def count_words
        return @contents.split.length
      
        # Returns the number of words in the contents as an integer
    end
  
    def reading_time(wpm) 
        fail "Reading speed must be above 0." unless wpm.positive?
        return (count_words / wpm.to_f).ceil                 
     
    end
  
    def reading_chunk(wpm, minutes)
        if reading_time(wpm) == minutes 
            return @contents
        else
            return "You do not have enough time to read any entries."
        end

      # Returns a string with a chunk of the contents that the user could read
      # in the given number of minutes.
      # If called again, `reading_chunk` should return the next chunk, skipping
      # what has already been read, until the contents is fully read.
      # The next call after that it should restart from the beginning.
    end
  end