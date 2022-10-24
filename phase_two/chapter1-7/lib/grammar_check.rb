=begin

------my_text------
def grammar_check(str)
    valid_punc = /[!?.]/ 
    caps_on = str[0].upcase
    caps_check = str[0] == caps_on
    punc_check = str[-1] =~ valid_punc
        if caps_check && punc_check
            return "This is grammatically correct."
        elsif (caps_check = false) && (punc_check = true)
            return "This needs capitalising!"
        else 
            return "This needs capitalising and punctuating correctly!"
        #elsif str[0] == caps_on  (str[-1] =~ valid_punc) = false
        #    return "This needs punctuating correctly!"
      end
end

=end

=begin
def verify_text(text)
    punctuation_req = /[!.?]/
    if text == ""
        return "There is no text to check."
    elsif text[0] == text[0].upcase && text[-1] =~ punctuation_req
        return "This sentence is great."
    elsif text[-1] =~ punctuation_req
       return "This sentence needs capitilization!"
    elsif text[0] == text[0].upcase
        return "This sentence needs punctuation!"
    else 
        return "This needs capitalization and punctuating!"
    end
end

=end


=begin
def verify_text(text)
    punctuation_req = /[!.?]/
    has_caps = unless text==nil
                return text[0] == text[0].capitalized
             end
    has_punc = text[-1] =~ punctuation_req
    if text == ""
        return "There is no text to check."
    elsif has_caps && has_punc
        return "This sentence is great."
    elsif has_punc
       return "This sentence needs capitilization!"
    elsif has_caps
        return "This sentence needs punctuation!"
    else 
        return "This needs capitalization and punctuating!"
    end
end

=end