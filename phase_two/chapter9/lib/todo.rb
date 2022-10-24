class Todo
    def initialize(task)
        @task = task
        @complete = false
    end

    def todo_task
        return @task
    end

    def mark_complete
        @complete = true
    end

    def is_complete?
        return @complete
    end
end