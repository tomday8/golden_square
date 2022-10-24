require 'todo'

RSpec.describe Todo do
    it "Initializes with an task" do
        todo = Todo.new("Walk the dog")
        result = todo.todo_task
        expect(result).to eq "Walk the dog"
    end

    it "Can mark a task as complete" do
        todo_1 = Todo.new("Walk the dog")
        todo_1.mark_complete
        expect(todo_1.is_complete?).to eq true
    end

    it "Returns false if not complete" do
        todo_1 = Todo.new("Walk the dog")
        expect(todo_1.is_complete?).to eq false
    end
end