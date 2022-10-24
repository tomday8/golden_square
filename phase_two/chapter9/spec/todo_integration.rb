require 'todo'
require 'todo_spec'

RSpec.describe "todo integration" do
    it "adds tasks to the list" do
        list = TodoList.new
        todo_1 = Todo.new("Wash the dishes")
        todo_2 = Todo.new("Go shopping")
        list.add(todo_1)
        list.add(todo_2)
        expect(list.incomplete).to eq [todo_1, todo_2]
    end



end