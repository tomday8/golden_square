class Diary
    def make_snippet(str)
        words = str.split
        amount = words.count
            if amount <= 5
                return str
            else
                trim = words.slice(0..4)
                snippet = trim.join(" ")
                return ("#{snippet}...")
            end
    end
end