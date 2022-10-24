require "todo_list"

RSpec.describe TodoList do
    context "given no tasks" do
        it "has an empty list" do
            todo_list = TodoList.new
            expect(todo_list.list).to eq []
        end
    end

    context "given a task" do
        it "has the task in the list" do
            todo_list = TodoList.new
            todo_list.add("Wash the car")
            expect(todo_list.list).to eq ["Wash the car"]
        end
    end

    context "given two tasks" do
        it "has both tasks in the list" do
            todo_list = TodoList.new
            todo_list.add("Wash the car")
            todo_list.add("Wash the dog")
            expect(todo_list.list).to eq ["Wash the car", "Wash the dog"]
        end
    end

    context "when we complete a task" do
        it "removes the task from the list" do
            todo_list = TodoList.new
            todo_list.add("Wash the car")
            todo_list.add("Wash the dog")
            todo_list.complete("Wash the car")
            expect(todo_list.list).to eq ["Wash the dog"]
        end
    end
end