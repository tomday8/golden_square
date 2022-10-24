class TodoList
    def initialize
        @todo_list = []
    end

    def add(task)
        @todo_list << task
    end

    def incomplete
        return @todo_list.reject do |task|
            task.is_complete?
        end
    end

    def complete
        return @todo_list.select do |task|
            task.is_complete?
        end
    end


end