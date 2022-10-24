Multi Class Design Recipe

1. Describe the Problem

Put or write the user story here. Add any clarifying 
notes you might have.

2. Design the Class System
 
Design the interfaces of each of your classes and 
how they will work together to achieve the job of 
the program. You can use diagrams to visualise the 
relationships between classes.

Consider pulling out the key verbs and nouns in the 
problem description to help you figure out which 
classes and methods to have.

Steps 3, 4, and 5 then operate as a cycle.


3. Create Examples as Integration Tests

Create examples of the classes being used together in different 
situations and combinations that reflect the ways in which the 
system will be used.

Encode one of these as a test and move to step 4.

4. Create Examples as Unit Tests

Create examples, where appropriate, of the behaviour of each 
relevant class at a more granular level of detail.

Encode one of these as a test and move to step 5

5. Implement the Behaviour

After each test you write, follow the test-driving process of 
red, green, refactor to implement the behaviour.