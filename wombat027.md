
# Day 9

## Topics:

- review
- independent work

## Notes:

### review:

- for people who weren't at class on Thursday: https://github.com/njcssa/spring_wombatnotes/blob/master/wombat026.md


### independent problems for people who were here:

- you need to change the setup depending on the problem
- the setup variable is in main.py
- look over the notes below for and, or, not
- then continue to wombat problems

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
        print("this will print because at least one statement is True")
    
    if (x / 5 == 1) or (x + 2 == 10):
        print("this won't print because both statements are False")
    ```
    - as you can see, ```or``` requires at least one of the statements to be true to do something -> if both are false, then nothing happens
    - % is the modulus operator and it is the remainder of division if you were to try to divide numbers evenly into each other
        - 15 % 4 = 3
        - 17 % 5 = 2
        - 2 % 1 = 0
        - 2 % 2 = 0
        - 5 % 3 = 2
        - 7 % 8 = 7

- examples for ```not```:
    ```python
    x = 10
    if not(x < 10):
        print("this will print because it turns a false into a true")
    
    if not(x == 10):
        print("this won't print because it turns a true into a false")
    ```

### problem: walk over to a pile of 10 leaves and pick them all up

![](/gifs/day2/pick_ten.gif)

- use setup 11
- you should use a loop to solve this problem
- you would want to use the built in function ```found_leaf()``` to determine if the wombat is on a square which holds the stack of leaves
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

## Homework:

Sample Text Sample Text Sample Text

