=begin
{{PROBLEM}} Method Design Recipe

1. Describe the Problem

As a user
So that I can manage my time
I want to see an estimate of reading time for a text, assuming that I can read 200 words a minute.

2. Design the Method Signature

#Include the name of the method, its parameters, return value, and side effects.

read_time = takes a string.

text_length = takes string, returns length of text in words.
minutes = takes text_length, calculates number of minutes.

read_time will return the amount of time in  minutes.

May want to return in hours / minutes / seconds dependent on texts given.

3. Create Examples as Tests

Make a list of examples of what the method will take and return.

EXAMPLES:

read_time("This string will have a short read time.") => ["Less than 1 minute to read."]
read_time(nil) throws an error
read_time("") => ["This takes no time to read."]


Encode each example as a test. You can add to the above list as you go.

4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.
=end

