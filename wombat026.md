
# Day 8

## Topics:

- built-in wombat functions
- how to use vscode
- how to run a wombat program
- how to create your own wombat functions
- how to call wombat functions
- how to use the basic while loop
- creating wombat functions together

## Notes:

### built-in wombat functions:

- the wombat is called "bob" in my programs but you can name he/she whatever you want
- the wombat has 7 default actions
    1. walk once in the direction it's facing -> ```bob.walk()```
    2. turn left once -> ```bob.turn_left()```
    3. place a single leaf on the spot it's standing on -> ```bob.place_leaf()```
    4. pick a single leaf on the spot it's standing on -> ```bob.pick_leaf()```
    5. detecting if it can walk one step forward and not crash into a rock or a wall -> ```bob.can_move()```
    6. detecting if it found a leaf on the spot it's currently on -> ```bob.found_leaf()```
    7. determining if it's facing north -> ```bob.facing_north()```
- the wombat will break if:
    - the wombat crashes into a rock or a wall
    - the wombat tries to pick a leaf on a spot which doesn't have a leaf
    - the wombat tries to place a leaf when it doesn't have any leaves to place
    - example:
    ![](/gifs/day1/move_until_broken.gif)
- the screen is a 16x12 grid and those dimensions will never change


### using vscode:

 the __only__ files you should be editing are __main.py__ and __commands.py__
- commands for the wombat go in commands.py
- the only edits you do in main.py are changing the setup variables at the top such as ```delay```, ```wombat```, and ```world```
- to run your commands you need to call your function you just created in the ```run()``` function at the bottom of commands.py


### running a wombat program:


click the green start button in the upper right corner of your editor when you are on main.py

![](/pictures/day1/runmain.png)

### creating your own functions:

- a function is a collection of simple instructions to do a more complex task
- need to use the ```def``` keyword to start
- create a unique and descriptive function name
- add parenthesis to the end of the function name with the self keyword -> ```def example_name(self)```
- after the parenthesis add a colon -> :
- indent correctly inside the function to tell the computer what code belongs to the function
- this is a function which makes the wombat walk forward 5 times:
```python
def walk_5_times(self):
    bob.walk()
    bob.walk()
    bob.walk()
    bob.walk()
    bob.walk()
```

task: improve this code by using a while loop


### calling wombat functions:

**important note**: calling functions you made uses the ```self``` keyword not ```bob```

- calling a function is telling the computer to execute all the commands within it
- if we want bob the wombat to walk forward once we need to call the walk function on him
    - we do this by saying ```bob.walk()```
- take the ```walk_5_times()``` function above and say we want bob to do those actions
    - you need to call the function in the commands.py ```run()``` function at the bottom
    - calling ```walk_5_times()``` in the ```run()``` function will look like:
    ```python
    def run(self):
        self.walk_5_times()
    ```
    - remember that you need the ```self``` keyword before your function name in the ```run()``` function
- then to execute your code, you have to run main.py


### using the basic while loop:

```python
i = 0
while i < 5:
    print(i)
    i = i + 1
```
- in the example above, the variable ```i``` is used as the counter variable
    - its only purpose is to count up so that the condition eventually becomes false
    
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

### creating wombat functions together:

- turn right function: sorry no gif here
- move until broken:
![](/gifs/day1/move_until_broken.gif)
- move until can't:
![](/gif/day2_4/move_until_cant.gif)
- walk around the whole screen:
![](/gifs/day2/walk_edge.gif)
- walk and place leaves 5 times:
![](/gifs/day2_4/walk_and_place.gif)
- make a square of leaves:
![](/gifs/day2_4/make_leaf_square.gif)

## Homework:

None

