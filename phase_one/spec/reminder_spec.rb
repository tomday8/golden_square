require 'reminder'

RSpec.describe Reminder do
    it "fails when no task set" do
        reminder = Reminder.new("Kay")
        expect {reminder.remind()}.to raise_error "No reminder set!"
    end
    it "reminds the user to do a key task" do
        reminder = Reminder.new("Kay")
        reminder.remind_me_to("Walk the dog")
        result = reminder.remind()
        expect(result).to eq "Walk the dog, Kay!"
    end

    it "reminds the user to do a key task" do
        reminder = Reminder.new("Tom")
        reminder.remind_me_to("Hang out the washing")
        result = reminder.remind()
        expect(result).to eq "Hang out the washing, Tom!"
    end 

    it "reminds the user to do a key task" do
        reminder = Reminder.new("Luca")
        reminder.remind_me_to("Tidy your room")
        result = reminder.remind()            
        expect(result).to eq "Tidy your room, Luca!"
    end
    
end