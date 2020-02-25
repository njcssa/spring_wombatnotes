# Day 13 (Monday 7/29)

[Link to Slideshow](google.com)

## Topics:

- 30 mins of going over previous week's work
- review day problems:
    - variables
    - if statements
    - and, or, not
    - while loops
    - functions
    - functions with parameters
    - return values
    - lists
    - sorting


## Notes:

### variables

- variables allow the computer to store information that can be used later
- variables need a name and a value to hold
- a variable name should be descriptive but not too long
- example of a variable ```python var = 10``` which means that the variable var holds the integer 10
- a variable's value can change by doing the following ```python var = 5``` -> now the variable ```var``` holds the integer 5 instead of 10

### if statements

- if statements allow the programmer to check the validity of a statement
- for example: the earth is flat -> true (jk false)
    - 1 + 2 == 3 -> true
    - "bob" == "sally" -> false
    - 10 > 11 -> false

- python examples:
```python

x = 10
y = 5
if x > y:
    print("this will print")

if x < y:
    print("this won't print")

if x == (y + 5):
    print("this will print")
```

- there is also the ```elif``` and ```else``` statement
- the ```elif``` is used when you want to check multiple conditions but only want 1 outcome
    - for example:
    ```python
    age = 10
    if age < 5:
        print("you are a kid")
    elif age > 10:
        print("you are an older kid")
    elif age >= 13:
        print("you are a teenager")
    elif age >= 18:
        print("you are an adult")
    elif age > 100:
        print("wow you're old")
    ```
    - in this example if you enter an age like 15 it will print "you are an older kid"
        - why doesn't it print "you are a teenager"? -> It's because if-elif blocks only execute the first true statement and then stop checking
        - age > 10 is the first true statement so that if statement executes and the checking stops
        - therefore you need to be careful in ordering these if-elif blocks
    - here is a better ordered if-elif block to give comments on a person's age
    ```python
    age = 15
    if age < 5:
        print("you are a kid")
    elif age > 100:
        print("wow you're old")
    elif age >= 18:
        print("you are an adult")
    elif age >= 13:
        print("you are a teenager")
    elif age > 10:
        print("you are an older kid")
    else:
        print("this will never print")
    ```
    - now it will print out our desired statement
    
- the ```else``` is used as a default case which will always execute if all the ifs and elifs above it are false

### and, or, not
- these are keywords which help a programmer adds to if statement conditions
- the ```and``` and ```or``` go between two conditionals like ```x > 10 and x < 50```
- ```not``` is used before a conditional statement to reverse it like ```not(x > 10)```
- examples for ```and```:
    ```python
    x = 10
    if (x > 5) and (x < 50):
        print("this will print because both statements are True")

    if (x < 5) and (x < 50):
        print("this won't print because both statements are not True")

    if (x < 5) and (x == 11):
        print("this won't print because both statements are not True")
    ```
    - as you can see, ```and``` needs both statements to be true to do something

- examples for ```or```:
    ```python
    x = 10
    if (x > 10) or (x == 10):
        print("this will print because at least one statement is True")
    
    if (x % 2 == 0) or (x < 5):
        print("this will print because at least one statemetn is True")
    
    if (x / 5 == 1) or (x + 2 == 10):
        print("this won't print because both statements are False")
    ```
    - as you can see, ```or``` requires at least one of the statements to be true to do something -> if both are false, then nothing happens

- examples for ```not```:
    ```python
    x = 10
    if not(x < 10):
        print("this will print because it turns a false into a true")
    
    if not(x == 10):
        print("this won't print because it turns a true into a false")
    ```

### while loops

- looping allows programmers to write less code by relying on the computer to do instructions multiple times
- a way to loop a piece of code is to use a ```python while``` loop
- basic syntax of a while loop:
```python
i = 0
while i < 5:
    print(i)
    i += 1
```
- here, we need to create a variable ```i``` and set the value it stores to 0 by typing ```i = 0```
- we need to type the ```python while``` keyword
- then we need a condition
    - a condition is a true or false statement
    - when the code is run for the first time, i stores 0 so the statment ```i < 5``` is true because 0 < 5
    - as the code continues the computer gets stuck in the while loop until the condition becomes false
    - the condition becomes false after 5 loops because 1 has been added to zero 5 times -> that means i stores 5 and 5 is not less than 5
    - after the condition becomes false, the computer exits the while loop and continues to the code below

### functions

- functions are useful for putting code into manageable containers
- they help with organiztion
- functions should only perform one function -> they should be able to be summarized in 1 setence
- example of a function that prints out the numbers 1-10:
```python
def print_to_ten():
    i = 1
    while i <= 10:
        print(i)
        i += 1

print_to_ten() # calling the function
```

### functions with parameters

- parameters allow you to give extra data to the function to operate on
- they are treated as variables within the function
- you should not change the parameter variables
- example of a function which adds together two numbers:
```python
def add(a, b):
    print(a + b)

add(1, 2) # calling the function
```
- first example but modified:
```python
def print_to_x(x):
    i = 1
    while i <= x:
        print(i)
        i += 1

print_to_x(20) # calling the function
```

### return values

- return values allow you to give back information to code outside of your function
- modified add function:
    - instead of printing, the function returns the answer to be used outside the function
```python
def add(a, b):
    return(a + b)

answer = add(1, 2) # calling the function and assigning its value to a variable
print(answer) # prints the answer that was returned from the function
```


### lists

- lists are a way to store many pieces of data in a way that is efficient for looping
- looping allows the computer to do the heavy lifting while the programmer sits back
- a list is a python variable which can hold many different types of values
    - it can hold numbers like 0, 3.15, 2, -5, and 10000
    - it can hold strings like "happy", "dog", "1", "five"
    - it can hold booleans True and False
    - and it can hold many other types of data
- each piece of data in a list has an index
    - the indexes start counting at zero which means that the first item has an index of 0, the second item is at the 1 index, the third item at the 2 index and so on...
    - specific data in the list is accessed using the bracket [] notation
- example of printing the first, second, and third item in a list
```python
names_list = ["bob", "jane", "kevin", "julia"]
print(names_list[0]) # prints bob
print(names_list[1]) # prints jane
print(names_list[2]) # prints kevin
```
- here is an example list and a program which loops through to print all its values
- take note of the ```len()``` function which is used to get the length of the list
```python

some_list = [1, 2, 4, 8, 16, 32, 64]
i = 0
while i < len(some_list):
    print(some_list[i])
    i += 1
```
- if you need more explanation, look here: https://youtu.be/RVXIBZvg-W8?t=198

### sorting

- refer to https://github.com/njcssa/wombat_notes/blob/master/wombat09.md


## Homework:

Continue on classwork if it's not finished. Otherwise, no homework. You should spend at least an hour on the homework and you are welcome to work longer than that. Be prepared to tell your teachers what progress you made at home.