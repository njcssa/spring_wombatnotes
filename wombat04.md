
# Day 5

## Topics:

- review wombat game
- review wombat functions
- review writing functions in commands.py
- review variables
- review while loops

## Notes:

### wombatgame:

- 2 main files
    - main.py - where you run the code with the green triangle
    - commands.py - where you type the commands for the wombat
- if the screen doesn't show up when you click run, check the bottom of your computer screen for a minimized python window


### wombat functions:

- 7 functions
    - bob.walk()
    - bob.place_leaf()
    - bob.turn_left()
    - bob.pick_leaf()
    - bob.facing_north()
    - bob.can_move()
    - bob.found_leaf()

- movement functions
    - bob.walk()
    - bob.turn_left()

- checking functions
    - bob.facing_north()
    - bob.can_move()
    - bob.found_leaf()

- checking functions are usually used with while loops as the condition

- action functions
    - bob.pick_leaf()
    - bob.place_leaf()

### writing functions in commands.py:

example function:
```python
def walk_five_times(self):
    i = 0
    while i < 5:
        bob.walk()
        i = i + 1
```
when making a function remember:
1. the the function needs to be written above the run function
2. the function needs to be on the same level as the run function
3. the function needs a unique name
4. the function needs the def keyword in front of it
5. the function needs parenthesis at the end with the keyword self inside
6. the function needs a colon at the end of its first line
7. any of the code you want to function to do must be indented inside the function - use the tab key to push your code in

example of making functions on the same level:
```python
def walk_five_times(self):
    i = 0
    while i < 5:
        bob.walk()
        i = i + 1

def walk_ten_times(self):
    self.walk_five_times()
    self.walk_five_times()

def spin_around(self):
    i = 0
    while i < 10:
        bob.turn_left()
        i += 1

def run(self):
    self.walk_five_times()
    self.walk_five_times()
    bob.turn_left()
    bob.turn_left()
    self.walk_ten_times()
    self.spin_around()
```

incorrectly placed functions example:
```python
    def walk_five_times(self):
        i = 0
        while i < 5:
            bob.walk()
            i = i + 1

    def walk_ten_times(self):
        self.walk_five_times()
        self.walk_five_times()

    def spin_around(self):
        i = 0
        while i < 10:
            bob.turn_left()
            i += 1

def run(self):
    self.walk_five_times()
    self.walk_five_times()
    bob.turn_left()
    bob.turn_left()
    self.walk_ten_times()
    self.spin_around()
```
incorrectly placed below run:

```python
def run(self):
    self.walk_five_times()
    self.walk_five_times()
    bob.turn_left()
    bob.turn_left()
    self.walk_ten_times()
    self.spin_around()

def walk_five_times(self):
    i = 0
    while i < 5:
        bob.walk()
        i = i + 1

def walk_ten_times(self):
    self.walk_five_times()
    self.walk_five_times()

def spin_around(self):
    i = 0
    while i < 10:
        bob.turn_left()
        i += 1

```

calling the function:
```python
def run(self):
    self.walk_five_times()
```
when calling a function remember:
1. if you made the function yourself you use the ```self``` keyword instead of ```bob```
2. then you have a dot (.) and the function name of the function you want to execute
3. then end the call with empty parenthesis
4. make sure the call is indented in the run function correctly


### variables

- variables are a way for the computer to store information
- they need
    1. a unique name
    2. and = sign to show you're storing info
    3. a value to store

example:
```python
test_variable = "test"
another = 1
print(test_variable)
print(another)
```

variable types:
1. numbers
2. strings - letters, words, sentences surrounded by " "
3. booleans - True, False


### while loops

- while loops are a way to do a piece of code multiple times without writing it multiple times
- while loops need
    1. the while keyword
    2. a condition that begins as True and ends as False
    3. code in the while loop to do your action
    4. code in the while loop to make the condition eventually False

example:

```python
i = 0
while i < 5:
    bob.walk()
    i = i + 1
```

Fibonacci Numbers example: https://repl.it/@benc2/test

```python
# 0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55
def fibonacci(num):
	i = 0
	start = 0
	n = 1

	temp = 0

	while i < num:
		if i == 0:
			print(start)
		elif i == 1:
			print(n)
		else:
			print(n + start)
			temp = n
			n = n + start
			start = temp
		i += 1

fibonacci(100)
```

## Homework:

None

