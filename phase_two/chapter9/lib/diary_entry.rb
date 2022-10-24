class DiaryEntry
    def initialize(title, contents)
        @title = title
        @contents = contents
        @word_count = 0
    end

    def title
        return @title
    end

    def contents
        return @contents
    end

    def word_counter   # <- May need moving to Diary
        words = @contents.split
        @word_count += words.length
        return @word_count
    end

    def reading_time(wpm) # <- May need moving to Diary
        fail "Reading speed must be above 0." unless wpm.positive?
        return (word_counter / wpm.to_f).ceil   
    end
end 