class GrammarStats
    def initialize
       @count = 0
       @correct = 0
    end
  
    def check(text) 
        punctuation_req = /[!.?]/
        @count += 1
        if text == "" 
            @count -= 1
            return false
        elsif (text[0] == text[0].upcase) && (text[-1] =~ punctuation_req)
            @correct += 1
            return true
        else 
            return false
        end
    end

    def percentage_good
        percent = ((@correct.to_f / @count.to_f) * 100).to_i
        return percent
    end
  end

