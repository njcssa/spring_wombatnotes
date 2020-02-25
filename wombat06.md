
# Day 7

## Topics:

- review wombat functions
- review while loops
- review wombat programs
- intro to conditional statements

## Notes:

### wombat game functions

Here are the functions we've used so far:

- bob.walk()
- bob.turn_right()
- bob.place_leaf()
- bob.pick_leaf()
- bob.can_move()


### while loops:

basic while loop:
```python
i = 0
while i < 10:
    print(i)
    i = i + 1
```

tasks:
1. make a while loop that prints out the numbers 10 - 27 skipping by 3s
2. make a while loop that prints out "hi" ten times
3. make a while loop that prints out a staircase like image with 5 levels
#
##
###
####
#####

### reviewing wombat programs:

- walking around the screen
- placing leaves and walking
- making a square out of leaves using while loops


### intro to conditional statements:

- conditional statements are a way to make a check once
    - if the check is true, the code inside the while loop is executed
    - otherwise, the code is not executed and the program skips to under the if statement
- similar to while loops, but they only happen once

example
```python
dog_age = 10

if dog_age > 10:
    print("you have an old dog")
```

- there's the if, elif, and else statements
- if you want to do a check, you will always first use an if statement
- depending on how many other checks you want, then you would use elif and else statements

example of using else statement

```python
dog_age = 10
if dog_age > 10:
    print("you have an old dog")
else:
    print("the dog isn't that old")
```

- else statements are when you want a "catch all" condition when the first check isn't true
- the above code is not the same as

```python
dog_age = 10
if dog_age > 10:
    print("you have an old dog")
print("the dog isn't that old")
```

- elif statements are used when we want to perform multiple checks in a logical order

example

```python
dog_age = 10
if dog_age < 3:
    print("puppy")
elif dog_age == 10:
    print("70 dog years old")
elif dog_age == 30:
    print("world record")
else:
    print("some other age")
```

go to this link to work on some problems:

https://repl.it/@benc2/conditional-statements


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


## Homework:

Sample Text Sample Text Sample Text

