class Todo
    def initialize(task) # task is a string
        @task = task
        @complete = false #("")
    end
  
    def task
        return @task unless 
            @task.empty?
        return "No task provided"
    end

    # def complete
    #     return @complete
    # end

    def mark_done!      
        @complete = true            #@complete << task   
                                    #@task.delete!(task)
    end
  
    def done?
        return @complete 
        # if  #return @complete
        #   @complete.include?(@task)
        #   return true
        # else
        #   return false
        # end
    end
  end

#   todo =  Todo.new("Wash the dishes")
#   todo.mark_done!