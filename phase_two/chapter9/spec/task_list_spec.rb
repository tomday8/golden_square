require 'task_list'

RSpec.describe TaskList do
    it "TaskList intializes and, returns all with an empty array" do
        task_list = TaskList.new
        expect(task_list.all).to eq []
    end 

    it "TaskList intializes and, returns complete with an empty array" do
        task_list = TaskList.new
        expect(task_list.complete).to eq []
    end

end