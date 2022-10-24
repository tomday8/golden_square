require 'task'
require 'task_list'

RSpec.describe "task integration" do
    it "adds tasks to a list and returns it" do
        task_list = TaskList.new
        task_1 = Task.new("Walk the cat")
        task_2 = Task.new("Walk the dog")
        task_list.add(task_1)
        task_list.add(task_2)
        expect(task_list.all).to eq [task_1, task_2]
    end

    it "marks a task as complete, returns uncompleted task in all" do
        task_list = TaskList.new
        task_1 = Task.new("Walk the cat")
        task_2 = Task.new("Walk the dog")
        task_list.add(task_1)
        task_list.add(task_2)
        task_2.mark_complete
        expect(task_list.all).to eq [task_1]
    end

    it "Marks a task as complete, returns task in complete." do
        task_list = TaskList.new
        task_1 = Task.new("Walk the cat")
        task_2 = Task.new("Walk the dog")
        task_list.add(task_1)
        task_list.add(task_2)
        task_2.mark_complete
        expect(task_list.complete).to eq [task_2]
    end

end