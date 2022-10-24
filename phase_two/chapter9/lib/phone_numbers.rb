class PhoneNumbers
    def initialize
        @numbers = []
    end

    def list
        return @numbers
    end

    def split_entries(diary_text)
        diary_text.all_entries.each do |entry|
            check_for_number(entry)
        end
    end

    def check_for_number(entry)
        entry.contents.scan(/[0-9]{11}/).each do |number|
            @numbers << number
        end       
    end
end