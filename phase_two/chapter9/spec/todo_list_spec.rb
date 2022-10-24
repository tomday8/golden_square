require 'todo_list'

RSpec.describe TodoList do
    it "Initializes" do
        list = TodoList.new
        expect(list).to eq list
    end

    it "Returns complete as an empty array" do
        list = TodoList.new
        expect(list.complete).to eq []
    end

    it "Returns incomplete as an empty array" do
        list = TodoList.new
        expect(list.incomplete).to eq []
    end 

end