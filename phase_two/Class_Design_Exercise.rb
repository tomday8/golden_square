{{PROBLEM}} Class Design Recipe

1. Describe the Problem

As a user
So that I can keep track of my tasks
I want a program that I can add todo tasks to and see a list of them.

As a user
So that I can focus on tasks to complete
I want to mark tasks as complete and have them disappear from the list.

2. Design the Class Interface
 
Class name: TaskManager
Will have initialize method. This will store a list of tasks.

Will have a method; task_list to store tasks.

Task_list will take two strings; task title and description.

Task_list will return to the user a confirmation of adding, and removing a task.

Will have a method; user_output to inform the user.




# EXAMPLE

class Reminder
  def initialize(name) # name is a string
    # ...
  end

  def remind_me_to(task) # task is a string
    # No return value
  end

  def remind()
    # Throws an exception if no task is set
    # Otherwise, returns a string reminding the user to do the task
  end
end
3. Create Examples as Tests

Make a list of examples of how the class will behave in different situations.

# EXAMPLE

# 1
reminder = Reminder("Kay")
reminder.remind_me_to("Walk the dog")
reminder.remind() # => "Walk the dog, Kay!"

# 2
reminder = Reminder("Kay")
reminder.remind() # fails with "No task set."

# 3
reminder = Reminder("Kay")
reminder.remind_me_to("")
reminder.remind() # => ", Kay!"
Encode each example as a test. You can add to the above list as you go.

4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.