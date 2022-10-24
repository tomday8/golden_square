def make_snippet(str)
    words = str.split
    amount = words.count
        if amount <= 5
            return str
        else
            snippet = words[0,5].join(" ")
            return ("#{snippet}...")
        end
end

#trim = words.slice(0..4)       <<<< This works, refactored to one line (line 7)
#snippet = trim.join(" ")       <<<< Removed slice method, identified how to select from array.