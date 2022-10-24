require 'todo'

RSpec.describe Todo do
    context "given an input" do
        it "can create a task" do
            todo = Todo.new("task")
            expect(todo.task).to eq "task"
        end
    end

    context "given no input" do
        it "inform the user" do
            todo = Todo.new("")
            expect(todo.task).to eq "No task provided"
        end
    end

    describe "#mark_done!" do
        it "can mark a task as complete" do
            todo = Todo.new("Wash the dishes")
            expect(todo.done?).to eq false
            todo.mark_done!
            expect(todo.done?).to eq true
        end

        # xit "can removes a task from @task when marked complete" do
        #     todo = Todo.new("Wash the dishes")
        #     todo.mark_done!
        #     result = todo.task
        #     expect(result).to eq "No task provided"
        # end
    end

    describe "#done?" do
        it "returns true if a task has been completed" do
            todo = Todo.new("Walk the dog")
            todo.mark_done!
            expect(todo.done?).to eq true
        end

        it "returns false if a task has not been complete" do
            todo = Todo.new("Walk the cat")
            expect(todo.done?).to eq false
        end
    end

end