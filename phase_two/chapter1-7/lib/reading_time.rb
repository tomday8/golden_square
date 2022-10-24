def reading_time(str)
       text_length = str.split.count
       mins = text_length / 200
       hours = mins / 60
       mins_remaining = mins % 60
            if mins < 1
                return "Less than 1 minute to read."
            elsif mins == 1
                return "This will take 1 minute to read."
            elsif mins > 1 && mins <= 59
                return "This will take #{mins} minutes to read."
            elsif mins == 60
                return "This will take #{hours} hour to read."
            elsif mins > 60 && mins_remaining > 0
                return "This will take #{hours} hours and #{mins_remaining} minutes to read."
            else mins > 60 && mins_remaining = 0
                return "This will take #{hours} hours to read."
            end
end

