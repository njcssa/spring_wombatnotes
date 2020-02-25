# Day 2


## Topics:

- 5-10 minutes of going over homework
- 5 minute review of what we did last class
- 5-10 minutes going over built-in wombat functions
- variables in python
- signing up for repl.it
- problem: make a program which walks the wombat around the edge of the screen
- problem: walk over to a pile of 10 leaves and pick them all up
- problem(student): pick all leaf piles in 1 row
- problem: pick all leaf piles in a row only if that pile has more than 5 leaves
- problem: pick all leaves in stacks which have even numbers of leaves and add 1 leaf to piles which have odd numbers of leaves
- problem: have wombat clear whole screen of leaves using code we already made



## Notes:

### 1.1 variables:

- variables allow the computer to store information that can be used later
- variables need a name and information to store
- a variable name should be descriptive but not too long
- example of a variable ```var = 10``` which means that the variable var holds the integer 10
- a variable's value can change by doing the following ```var = 5``` -> now the variable ```var``` holds the integer 5 instead of 10

### 1.2 different types of information in variables:

- variables can store many different types of information
- we're going to be focusing on storing numbers, booleans, and strings
- numbers can be integers like 0, 5, 1, -3 and rational numbers like 3.14, 2.5, 1.0001
- booleans are conditions: True and False -> capitalize
- strings are single characters, words, or multiple words and need to be surrounded by double quotation marks ""

```python
# example of storing numbers in variables

var1 = 12
var2 = 3.1
var3 = -1000.11

# example of storing booleans

vart = True
varf = False

# example of storing strings

vars = "hi my name is bob"
varc = "b"
variable = "yoooo"
```

### 1.3 doing math with numbers and variables

- python can do basic math calculations like addition, subtraction, multiplication, and division
- variables can store math expressions like 3 + 2
- PEMDAS applies in math expressions in python

```python
# example of math in python

var_stores_2 = 3 - 1
var_also_stores_2 = 2 * 1
var_also_also_stores_2 = 10 / 5
var_name_too_long = 1 + 1
```

### 1.4 variable values can change:

- variables are mutable, meaning they can change
- we change a variable by setting it equal (storing) a different value in it
- variables can store the value of other variables

```python
# example of changing what's stored in a variable

var_something = 2
var_something = 3 # now the variable holds the integer 3

# variable storing another variable's value

var_hello = "hello"
var_greeting = var_hello # var_greeting stores "hello"
```

### 1.5 printing
- printing is a way to output information from the program to the screen
- we use the ```print``` function to achieve this

```python
# examples of printing
print(2)
print("hello")
print(False)
print(1+1)

# what will be printed here?
var = 2
varx = var
print(varx)
var = 3
print(varx)
```

before going to the link below, sign up for repl in 1.6

now go to this repl and start working on the problems: https://repl.it/@benc2/variables

### 1.6 signing up for repl.it

- click the signup button in the top right corner
- you can create an account using your Google account or personal email and password
- creating your own account is important to save the notes we do every day


### looping:

- looping allows programmers to write less code by relying on the computer to do instructions multiple times
- a way to loop a piece of code is to use a ```while``` loop
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

### if statements:

- allow you to perform checks to determine truth
- for example, you have two variables ```b = 5``` and ```c = 10```, and assume you don't know which is bigger, you can determine the biggest by using an if statement
    ```python
    if b < c:
        print("c is bigger")
    else:
        print("b is bigger")
- the ```else``` statement is the default option if the other options above are all false
- in this case, the computer would print that c is bigger because 10 > 5 -> True


for testing out variables, if statements, and while loops more, go to https://repl.it/languages/python3, paste the code, and run it.


### and, or, not
- these are keywords which help a programmer add more logic to if statement conditions
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


### problem: make a program which walks the wombat around the edge of the screen

![](/gifs/day2/walk_edge.gif)

- use setup 0
- if you use single commands over and over such as ```bob.walk()``` the program will be very long and tedious to write
- you can shorten your code by implementing a loop
    - a loop is a piece of code which allows a piece of code to run multiple times
    - for example, this code below will cause bob to walk 10 times using only 1 walk call
    ```python
    i = 0
    while i < 10:
        bob.walk()
        i += 1
    ```

### problem: walk over to a pile of 10 leaves and pick them all up

![](/gifs/day2/pick_ten.gif)

- use setup 11
- again like above, you should use a loop to solve this problem
- however, this time, you would want to use the built in function ```found_leaf()``` to determine if the wombat is on a square which holds the stack of leaves
- then once you determine that you are on the square, you pick them up _while_ you have _found a leaf_

### problem(student): pick all leaf piles in 1 row

![](/gifs/day2/row_leaf_piles.gif)

- use setup 12
- this is a similar problem to the one above but now you need to adapt it for multiple leaf piles
- hint: you'll know you're done picking up leaf piles once the wombat can't move anymore -> it'll be at the other side
- hint: you'll need to do two checks this time for the while loop which controls the wombat's walking
    - this can be done in the following way:
    ```python
    while not bob.found_leaf() and bob.can_move():
        bob.walk()
    ```
    - therefore, bob will only walk when he __both__ hasn't found a leaf _and_ he can move
    - notice how you can chain true and false checks together using the ```and``` keyword

### problem: pick all leaf piles in a row only if that pile has more than 5 leaves

![](/gifs/day2/more_than_5.gif)

- use setup 5
- this is similar to the problem above but now we need to determine if the pile has more than 5 leaves
- hint: make some code to count the leaves on the square by using a variable which stores the count
- only _if_ the count of leaves is higher than 5 pick the rest of the leaves on the square
- otherwise, put the leaves back
- do this until you reach the other side
- hint: the last spot is tricky if your while loop depends on the truth of ```bob.can_move()``` - __remember__ this for other problems
    - an organized way to do the problem may look like this:
    ```python
    def count_five(self):
        leaf_count = 0
        while bob.found_leaf():
            bob.pick_leaf()
            leaf_count += 1
        if leaf_count <= 5:
            while leaf_count > 0:
                bob.place_leaf()
                leaf_count -= 1
    
    def greater_than_five2(self):
        while bob.can_move():
            self.count_five()
            bob.walk()
        self.count_five()
    ```

### problem: pick all leaves in stacks which have even numbers of leaves and add 1 leaf to piles which have odd numbers of leaves

![](/gifs/day2/pick_even_add_one.gif)

- use setup 5
- this is similar to the problem above but now you need two options: an ```if``` and an ```else``` to make sure you catch both cases

### problem: have wombat clear whole screen of leaves using code we already made

![](/gifs/day2/world1.gif)

- use setup 1
- this is combining everything we have learned in the previous problems
- you have to have some extra code here to tell the wombat which direction to turn at the end of the row
    - if it's on the right side it needs to turn back left so it can walk back the other direction and vice-versa



## Homework:

Continue on classwork if it's not finished. Otherwise, no homework. You should spend at least an hour on the homework and you are welcome to work longer than that. Be prepared to tell your teachers what progress you made at home.