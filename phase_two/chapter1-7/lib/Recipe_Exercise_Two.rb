
{{PROBLEM}} Method Design Recipe - Exercise 2

1. Describe the Problem

As a user
So that I can improve my grammar
I want to verify that a text starts with a capital letter and ends with a suitable sentence-ending punctuation mark.


2. Design the Method Signature

grammar_check = takes a string.

Variables in the method:

check_caps = takes string, checks whether it starts with a capital. True or False output.
check_end = takes string, checks whether ends with suitable punctuation (.?!) True or False output.

If statements to compare check_caps and check_end.

Return "This needs punctuating correctly!" if not punctuated but has caps.
Return "This needs capitalising!" if not capitalised but has correct punctation.
Return "This is grammatically correct." if both answer true.
Return "This needs capitalising and punctuating correctly!" if both answer false.

3. Create Examples as Tests

Make a list of examples of what the method will take and return.

EXAMPLES:

grammar_check("This string will be correct.") => ["This is grammatically correct."]
grammar_check("this string is not correct at all") => ["This needs capitalising and punctuating correctly!"]
grammar_check("This string is not completely correct") => ["This needs punctuating correctly!"]
grammar_check("this string is not completely correct!") => ["This needs capitalising!"]


4. Implement the Behaviour

After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour.


