require 'todo'
require 'todo_list'

RSpec.describe 'Todo List Integration' do
    context "given a single incomplete task" do
        it "creates a list of tasks to complete" do
            list = TodoList.new
            todo_1 = Todo.new("Wash the car")
            list.add(todo_1)
            expect(list.incomplete).to eq [todo_1]
        end
    end

    # context "given no task" do  <-- There is no argument provided as this is checked and returned in class spec.
    #     it "informs the user" do
    #         list = TodoList.new
    #         todo_1 = Todo.new("")
    #         list.add(todo_1)
    #         # expect(list.add).to eq "No task provided"
    #         expect { list.add }.to raise_error "No task provided"
    #     end
    # end

    context "given a single complete task" do
        it "creates a list of completed tasks" do
            list = TodoList.new
            todo_1 = Todo.new("Wash the car")
            todo_1.mark_done!
            list.add(todo_1)
            expect(list.complete).to eq [todo_1]
        end
    end

    context "given multiple tasks" do
        it "creates a list of tasks to complete" do
            list = TodoList.new
            todo_1 = Todo.new("Wash the car")
            todo_2 = Todo.new("Walk the dog")
            list.add(todo_1)
            list.add(todo_2)
            expect(list.incomplete).to eq [todo_1, todo_2]
        end

        it "creates a list of tasks that are complete" do
            list = TodoList.new
            todo_1 = Todo.new("Wash the car")
            todo_2 = Todo.new("Walk the dog")
            todo_1.mark_done!
            todo_2.mark_done!
            list.add(todo_1)
            list.add(todo_2)
            expect(list.complete).to eq [todo_1, todo_2]
        end

        it "returns seperate lists for items to be completed and that are completed" do
            list = TodoList.new
            todo_1 = Todo.new("Wash the car")
            todo_2 = Todo.new("Walk the dog")
            todo_1.mark_done!
            list.add(todo_1)
            list.add(todo_2)
            expect(list.complete).to eq [todo_1]
            expect(list.incomplete).to eq [todo_2]
        end
    end

    describe "#give_up" do
        context "given a single incomplete task" do
            xit "marks an incomplete task as complete" do
                list = TodoList.new
                todo_1 = Todo.new("Wash the car")
                list.add(todo_1)
                list.give_up!
                expect(list.complete).to eq [todo_1]
            end   
        end

        context "given multiple incomplete tasks" do
            it "marks multiple tasks as complete" do
                list = TodoList.new 
                todo_1 = Todo.new("Wash the car")
                todo_2 = Todo.new("Wash the dishes")
                list.add(todo_1)
                list.add(todo_2)
                list.give_up!
                expect(list.complete).to eq [todo_1, todo_2]
                expect(list.incomplete).to eq []
            end
        end
    end

end
