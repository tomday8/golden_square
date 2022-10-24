require 'task_manager'

RSpec.describe TaskManager do
    context "When adding a new task." do
        it "Informs a user a task has been saved." do
            taskmanager = TaskManager.new
            result = taskmanager.add_task("Walk the dog.")
            expect(result).to eq "Your task has been saved."
        end

        it "Can recall a task." do
            taskmanager = TaskManager.new
            taskmanager.add_task("Walk the dog.")
            result = taskmanager.list
            expect(result).to eq "Walk the dog."
        end

        it "Can recall multiple tasks." do
            taskmanager = TaskManager.new
            taskmanager.add_task("Walk the dog.")
            taskmanager.add_task("Feed the cat.")
            result = taskmanager.list
            expect(result).to eq "Walk the dog. Feed the cat."
        end
    end

    it "Informs the user when input is empty." do
        taskmanager = TaskManager.new
        result = taskmanager.add_task("")
        expect(result).to eq "No task has been created."
    end

    context "When adding a duplicate task." do
        it "Does not store duplicate tasks." do
            taskmanager = TaskManager.new
            taskmanager.add_task("Walk the dog.")
            taskmanager.add_task("Walk the dog.")
            result = taskmanager.list
            expect(result).to eq "Walk the dog."
        end
    
        it "It informs the user when a duplicate has been added." do
            taskmanager = TaskManager.new
            taskmanager.add_task("Walk the dog.")
            result = taskmanager.add_task("Walk the dog.")
            expect(result).to eq "This is already on your task list."
        end
    end
    
    # context "When removing a task" do                                    #Do not need remove function as per user spec.
    #     it "Informs the user the task has been removed" do
    #         taskmanager = TaskManager.new
    #         taskmanager.add_task("Walk the dog.")
    #         result = taskmanager.remove_task("Walk the dog.")
    #         expect(result).to eq "This has been removed from your list."
    #     end

    #     it "Informs the user a task cannot be found and to check list" do
    #         taskmanager = TaskManager.new
    #         taskmanager.add_task("Walk the dog.")
    #         result = taskmanager.remove_task("Walk the cat.")
    #         expect(result).to eq "Cannot find this task. Check list to see tasks."
    #     end
    # end
    
    context "When completing a task" do
        it "Can remove completed tasks" do
            taskmanager = TaskManager.new
            taskmanager.add_task("Walk the dog.")
            result = taskmanager.complete("Walk the dog.")
            expect(result).to eq "This has been removed from your list."
        end

        it "Informs the user the task cannot be found" do
            taskmanager = TaskManager.new
            taskmanager.add_task   ("Walk the dog.")
            result = taskmanager.complete("Walk the cat.")
            expect(result).to eq "Cannot find this task. Check list to see tasks."
        end
    end
end