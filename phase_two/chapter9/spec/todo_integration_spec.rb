require 'todo'
require 'todo_list'

RSpec.describe "todo integration" do
    it "adds tasks to the list" do
        list = TodoList.new
        todo_1 = Todo.new("Wash the dishes")
        todo_2 = Todo.new("Go shopping")
        list.add(todo_1)
        list.add(todo_2)
        expect(list.incomplete).to eq [todo_1, todo_2]
    end

    it "can mark a task as complete" do
        list = TodoList.new
        todo = Todo.new("Wash the dishes")
        list.add(todo)
        todo.mark_complete
        expect(list.complete).to eq [todo]
    end

    it "can return both a complete and incomplete list correctly" do
        list = TodoList.new
        todo_1 = Todo.new("Wash the dishes")
        todo_2 = Todo.new("Walk the dog")
        list.add(todo_1)
        list.add(todo_2)
        todo_1.mark_complete
        expect(list.incomplete).to eq [todo_2]
        expect(list.complete).to eq [todo_1]
    end
end