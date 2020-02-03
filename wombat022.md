
# Day 3

## Topics:

- looping in python

## Notes:

### 3.1 looping:

- looping allows programmers to write less code by relying on the computer to do instructions multiple times
- a way to loop a piece of code is to use a ```while``` loop
- in english it is like "while something is true do these things, and when it becomes false stop doing those things"
- basic syntax of a while loop:
```python
i = 0
while i < 5:
    print(i)
    i = i + 1
```
- here, we need to create a variable ```i``` and set the value it stores to 0 by typing ```i = 0```
- we need to type the ```while``` keyword
- then we need a condition
    - a condition is a true or false statement -> a boolean!
    - when the code is run for the first time, i stores 0 so the statment ```i < 5``` is true because 0 < 5
    - as the code continues the computer gets stuck in the while loop until the condition becomes false
    - the condition becomes false after 5 loops because 1 has been added to zero 5 times -> that means i stores 5 and 5 is not less than 5
    - after the condition becomes false, the computer exits the while loop and continues to the code below


### 3.2 loop counter variable:

```python
i = 0
while i < 5:
    print(i)
    i = i + 1
```
- in the example above, the variable ```i``` is used as the counter variable
    - its only purpose is to count up so that the condition eventually becomes false
    - table
        loop number | counter variable value | condition(i < 5) | output
        --- | --- | --- | ---
        1 | 0 | True | 0
        2 | 1 | True | 1
        3 | 2 | True | 2
        4 | 3 | True | 3
        5 | 4 | True | 4
        6 | 5 | False | nothing
- think: what would happen if the code removed ```i = i + 1```
- think: what would happen if the condition was changed to ```i <= 5```
- think: what would happen if the condition was changed to ```i > 5```


### 3.3 infinite loops:

- infinite loops are when the condition never becomes false
- an example of a never-false while loop would be just ```while True:```
- computers don't like infinite loops and it can sometimes be a pain to close your program if it's in an infinite while loop
- make sure to check your conditions to make sure that they are going to be false at some point


### 3.4 common loops

loop to add all numbers in a range together
```python
i = 0
sum = 0
while i <= 10:
    sum = sum + i
    i = i + 1

print(sum)
```

loop by increasing by 2s
```python
i = 0
while i <= 10:
    print(i)
    i = i + 2
```

## Homework:

None

