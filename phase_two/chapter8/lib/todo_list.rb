class TodoList
    def initialize
        @incomplete = []
        @completed = []
    end
  
    def add(todo) 
       
        if todo.done? == true
            @completed << todo
        else 
            @incomplete << todo
        end
    end

    def incomplete
        return @incomplete
    end
  
    def complete
        return @completed
    end
  
    def give_up!
        @incomplete.each do |todo|     # do OR block >>> {|todo| todo.mark_done!}
            todo.mark_done!
            @completed << todo
            end

        @incomplete = []
        #@completed << @incomplete <-- Created array in array
    end
  end