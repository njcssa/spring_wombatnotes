# Day 9 (Monday 7/22)

[Link to Slideshow](google.com)

## Topics:

- 30 minute review of all the topics and problems we did last week
- 5-10 minutes of going over homework
- learn about sorting algorithms
    - bubble sort
    - selection sort
- problem: bubble sorting a list
- problem(student): selection sorting a list



## Notes:

### sorting algorithms

- sorting algorithms are programs which order lists of data into a certain order that the programmer specifies
    - a common example is a sorting algorithm which sorts the numbers in a list into increasing order
- everyday examples
    - on your contact list on your phone, the people are listed in alphabetical order - a sorting algorithm did that work
    - google search is just a very complex sorting algorithm
    - when you do ctrl-f on your computer, the computer is using a sorting algorithm to find the words you're trying to find
    - on rankings websites, a sorting algorithm updates the ranks when one of the items changes its value
- as you can see, sorting algorithms are all around you in the 21st century

### bubble sort

- the bubble sort is one of the simplest sorting algorithms
- in short, the algorithm takes the list like [8, 6, 2, 7, 10, 3], starts off at the 8, and compares it to the number next to it (6)
    - if the one next to it is smaller, both numbers swap places like [6, 8, 2, 7, 10, 3]
    - then the algorithm compares the 8 to the number next to it again
        - is 2 less than 8 -> yes, so swap both items -> [6, 2, 8, 7, 10, 3]
        - this pattern keeps going until the largest number in the list is in the last spot -> [6, 2, 7, 8, 3, 10]
- here are the steps of the sorting (bolded is the first number of the comparison)
- [__8__, 6, 2, 7, 10, 3]
- [6, __8__, 2, 7, 10, 3]
- [6, 2, __8__, 7, 10, 3]
- [6, 2, 7, __8__, 10, 3] -> no swap because 10 is not less than 8
- [6, 2, 7, 8, __10__, 3]
- [6, 2, 7, 8, 3, __10__] -> now back to the first number
- [__6__, 2, 7, 8, 3, 10]
- [2, __6__, 7, 8, 3, 10]
- [2, 6, __7__, 8, 3, 10]
- [2, 6, 7, __8__, 3, 10]
- [2, 6, 7, 3, __8__, 10] -> second biggest number now in second to last spot, now back to first number
- [__2__, 6, 7, 3, 8, 10]
- [2, __6__, 7, 3, 8, 10]
- [2, 6, __7__, 3, 8, 10]
- [2, 6, 3, __7__, 8, 10] -> third biggest number now in third to last spot, now back to first number
- [__2__, 6, 3, 7, 8, 10]
- [2, __6__, 3, 7, 8, 10]
- [2, 3, __6__, 7, 8, 10] -> fourth biggest number now in fourth to last spot, now back to first number
- [__2__, 3, 6, 7, 8, 10]
- [2, __3__, 6, 7, 8, 10] -> no swap so list must be sorted

- here is a good resource for learning more about the bubble sort: https://www.geeksforgeeks.org/bubble-sort/
- wikipedia link for bubble sort: https://en.wikipedia.org/wiki/Bubble_sort

![](/gifs/day9/bubble-sort.gif)


### selection sort

- the selection sort is another of the simple sorting algorithms
- the basic concept behind it is finding the minimum value in a part of the list and then putting it in the current location
    - on the first iteration, the minimum value is put in the first index
    - then the next minimum value is the the second smallest value, and it is put in the second index
    - this goes on until the list is sorted

- example:
- say the list is [10, 9, 1, 11, 19, 13]
- the sort first finds the minimum value in the range of indexes 0-5
- the minimum value is 1 an that is moved to the zero index while whatever was in the zero index is swapped
    - [__1__, 9, __10__, 11, 19, 13]
- now the sort knows the absolute smallest is in the zero index, so it doesn't need to check that index anymore
- the sort now finds the smallest value in the range of indexes 1-5
- the minimum is 9, but since it is in the correct spot, nothing is changed
    - the same goes for the 10 and 11
    - [1, __9__, 10, 11, 19, 13]
    - [1, 9, __10__, 11, 19, 13]
    - [1, 9, 10, __11__, 19, 13]
- by this point, the range to check is indexes 4-5
- the minimum value is 13 so that swaps with the 4 index
    - [1, 9, 10, 11, __13__, __19__]
- now we have a sorted list

- geeks for geeks link: https://www.geeksforgeeks.org/selection-sort/
- wikipedia article: https://en.wikipedia.org/wiki/Selection_sort

![](/gifs/day9/selection-sort.gif)

- the yellow is the current index
- the red is the current min value
- the blue is the current item
- notice how the search range becomes smaller as the sort goes on

![](/gifs/day9/selection-sort.jpg)


### problem: bubble sorting a list

- go to https://repl.it/languages/python3
- you need to make an account if you would like to save your progress


### problem(student): selection sorting a list

- go to https://repl.it/languages/python3


## Homework:

Continue on classwork if it's not finished. Otherwise, no homework. You should spend at least an hour on the homework and you are welcome to work longer than that. Be prepared to tell your teachers what progress you made at home.