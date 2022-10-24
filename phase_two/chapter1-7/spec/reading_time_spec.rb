require 'reading_time'

RSpec.describe 'reading_time method' do

    it "Returns the time to read some text." do
        text = reading_time("This string will have a short read time.")
        expect(text).to eq "Less than 1 minute to read."
    end

    it "Returns the time to read some text when 1 minute." do
        text = reading_time("This will take 1 minute to read. " * 30)
        expect(text).to eq "This will take 1 minute to read."
    end

    it "Returns the time to read some text in minutes." do
        text = reading_time("This string will have a long read time. " * 200) 
        expect(text).to eq "This will take 8 minutes to read."
    end
    it "Returns the time to read some text in minutes." do
        text = reading_time("This will take even longer to read than the last. " * 400)
        expect(text).to eq "This will take 20 minutes to read."
    end
    it "Returns the time to read one hour of text." do
        text = reading_time("This will take even longer to read than the last. " * 1200)
        expect(text).to eq "This will take 1 hour to read."
    end
    
    it "Returns the time to read some text in hours and minutes." do
        text = reading_time("This will take over and hour to read. " * 1600) #80 mins
        expect(text).to eq "This will take 1 hours and 4 minutes to read."
    end

    it "Returns the time to read some text in hours." do
        text = reading_time("This will take even longer to read than the last. " * 2400) 
        expect(text).to eq "This will take 2 hours to read."
    end

    it "Returns the time to read some text in hours and minutes." do
        text = reading_time("This will take the longest to read of them all. " * 4000) 
        expect(text).to eq "This will take 3 hours and 20 minutes to read."
    end
end
