# Day 5 (Monday 7/15)

[Link to Slideshow](google.com)

## Topics:

- 30 mins to review problems we solved last week
- 5-10 mins to go over homework
- problem(student): make checkered pattern
- problem(student): make a spiral
- functions which use parameters
- python lists


## Notes:

### problem(student): make checkered pattern

![](/gifs/day5/checkered_pattern.gif)

- use setup 0

### problem(student): make a spiral

![](/gifs/day5/spiral.gif)

- use setup 0
- each ring should increase the number of leaves by 1 from the ring before

### python functions with parameters

- sometimes functions need more information to do their actions
- with _parameters_ you can pass information into them
- for example, this is a function which prints the sum of 2 numbers the programmer passes in
```python
def sum_func(a, b):
    print(a + b)
```
- don't forget that you still need to call the function
```python
sum_func(8, 9)
```
- the parameters in the example above are ```a``` and ```b```
- the parameters act like variables
- you can add as many parameters as you like
- generally, you should __not__ change the parameters by assigning them to new values
- if you need more explanation, go here: https://www.youtube.com/watch?v=CGRKqnoQGgM

### python lists

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


## Homework:

Continue on classwork if it's not finished. Otherwise, no homework. You should spend at least an hour on the homework and you are welcome to work longer than that. Be prepared to tell your teachers what progress you made at home.