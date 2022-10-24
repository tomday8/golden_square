require 'task'

RSpec.describe Task do
    it "Initializes with a task" do
        task = Task.new("Walk the dog")
        expect(task.title).to eq "Walk the dog"
    end

    it "Informs user if task complete, returns false when not complete." do
        task = Task.new("Walk the dog")
        expect(task.complete?).to eq false
    end

    it "Informs user if task complete, returns true when complete." do
        task = Task.new("Walk the dog")
        task.mark_complete
        expect(task.complete?).to eq true
    end

end