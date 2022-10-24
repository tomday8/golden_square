class TaskList
    def initialize
        @tasks = []
    end

    def add(task)
        @tasks << task 
    end

    def all
        return @tasks.reject(&:complete?) # <= Refactored.
        # return @tasks.reject do |task|
        #     task.complete?
        # end
    end

    def complete
        return @tasks.select(&:complete?)
        # Returns a list of Task instances
        # But only the completed ones
    end
end