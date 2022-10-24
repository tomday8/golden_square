class DiaryEntryTwo
    def initialize(title, contents) # title, contents are strings
      @title = title
      @contents = contents
      @furthest_word = 0
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
        fail "Reading speed must be above 0." unless wpm.positive?
        no_of_words_we_can_read = wpm * minutes
        start_point = @furthest_word
        end_point = @furthest_word + no_of_words_we_can_read
        word_list = words[start_point, end_point]
        if end_point >= count_words
            @furthest_word = 0
        else
            @furthest_word = end_point
        end
        return word_list.join(" ")
        
    end

    private

    def words
       return @contents.split
    end
  end