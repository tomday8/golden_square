  # File: lib/diary_entry.rb
  class DiaryEntry
    def initialize(title, contents) # title, contents are strings
        @title = title
        @contents = contents
        @bookmark = 0
        @words = contents.split 
        @count = 0
    end
  
    def title
      return @title
    end
  
    def contents
      return @contents
    end
  
    def count_words
        @count += @words.length
        return @count 
        # In example:
        # @contents.split(" ").length
        # Refactored:
        # return 0 if @contents.empty?
        # return @contents.count(" ") + 1  <- This is counting space plus one.
    
    end
  
    def reading_time(wpm) 
        fail "Reading speed must be above 0." unless wpm.positive?
        return (count_words / wpm.to_f).ceil  
    end
  
    def reading_chunk(wpm, minutes) 
        fail "Reading speed must be above 0." unless wpm.positive?
        reading_speed = wpm * minutes
        start_point = @bookmark
        end_point = @bookmark + reading_speed
        word_list = @words[start_point, end_point]
        if end_point >= count_words
            @bookmark = 0
        else
            @bookmark = end_point
        end
        return word_list.join(" ")
    end

  
  end