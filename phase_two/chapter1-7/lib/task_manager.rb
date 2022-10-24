class TaskManager
    def initialize
        @task_list = []
    end

    def add_task(text)
        if text == ""
            return "No task has been created."
        elsif
            @task_list.include?(text)
            return "This is already on your task list."
        else
            @task_list.push(text)
            return "Your task has been saved."
        end
    end

    def list
        return @task_list.join(" ")
    end

    def complete(text)
        if @task_list.include?(text)
            @task_list.delete(text)
            return "This has been removed from your list."
        else
            return "Cannot find this task. Check list to see tasks."
        end
    end

end

