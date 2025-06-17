# PYTHON

## BASICS

## SOCIAL DATA SCIENCE
**Need to learn immediately:**

- Data types: integers, floats, strings, [booleans](https://realpython.com/python-or-operator/), lists, dictionaries, and sets (tuples are kinda optional)
- Defining functions
- Writing loops
- Understanding mutable versus immutable data types
- Methods for manipulating strings
- Importing third party modules
- Reading and interpreting errors
- Pynarrative

---

## String Methods

Here are some of the most common string methods. A method is like a function, but it runs "on" an object. If the variable s is a string, then the code s.lower() runs the lower() method on that string object and returns the result (this idea of a method running on an object is one of the basic ideas that make up Object Oriented Programming, OOP). Here are some of the most common string methods:

- s.lower(), s.upper() -- returns the lowercase or uppercase version of the string
- s.strip() -- returns a string with whitespace removed from the start and end
- s.isalpha()/s.isdigit()/s.isspace()... -- tests if all the string chars are in the various character classes
- s.startswith('other'), s.endswith('other') -- tests if the string starts or ends with the given other string
- s.find('other') -- searches for the given other string (not a regular expression) within s, and returns the first index where it begins or -1 if not found
- s.replace('old', 'new') -- returns a string where all occurrences of 'old' have been replaced by 'new'
- s.split('delim') -- returns a list of substrings separated by the given delimiter. The delimiter is not a regular expression, it's just text. 'aaa,bbb,ccc'.split(',') -> ['aaa', 'bbb', 'ccc']. As a convenient special case s.split() (with no arguments) splits on all whitespace chars.
- s.join(list) -- opposite of split(), joins the elements in the given list together using the string as the delimiter. e.g. '---'.join(['aaa', 'bbb', 'ccc']) -> aaa---bbb---ccc

## String Slices

The "slice" syntax is a handy way to refer to sub-parts of sequences -- typically strings and lists. The slice **s[start:end]** is the elements beginning at start and extending up to but not including end. Suppose we have s = "Hello"

![](https://developers.google.com/static/edu/python/images/hello.png)

- **s[1:4] is 'ell**' -- chars starting at index 1 and extending up to but not including index 4
- **s[1:] is 'ello'** -- omitting either index defaults to the start or end of the string
- **s[:] is 'Hello'** -- omitting both always gives us a copy of the whole thing (this is the pythonic way to copy a sequence like a string or list)
- **s[1:100] is 'ello'** -- an index that is too big is truncated down to the string length

The standard zero-based index numbers give easy access to chars near the start of the string. As an alternative, Python uses negative numbers to give easy access to the chars at the end of the string: s[-1] is the last char 'o', s[-2] is 'l' the next-to-last char, and so on. Negative index numbers count back from the end of the string:

- **s[-1] is 'o'** -- last char (1st from the end)
- **s[-4] is 'e'** -- 4th from the end
- **s[:-3] is 'He'** -- going up to but not including the last 3 chars.
- **s[-3:] is 'llo'** -- starting with the 3rd char from the end and extending to the end of the string.

## Python Lists

- Python lists are **ordered, mutable** collections of items, accessed using square brackets and zero-based indexing.
- Assigning a list to a new variable does not create a copy; both variables point to the same list in memory.
- The `for...in` construct is used to iterate through elements in a list, while `in` checks for membership.
- The `range()` function generates sequences of numbers, often used with `for` loops for indexed iteration.
- Lists have methods like `append()`, `insert()`, `extend()`, `index()`, `remove()`, `sort()`, `reverse()`, and `pop()` to manipulate their contents.

## List Methods

Here are some other common list methods.

- **list.append(elem)** -- adds a single element to the end of the list. **Common error: does not return the new list, just modifies the original.**
- **list.insert(index, elem)** -- inserts the element at the given index, shifting elements to the right.
- **list.extend(list2)** adds the elements in list2 to the end of the list. Using + or += on a list is similar to using extend().
- **list.index(elem)** -- searches for the given element from the start of the list and returns its index. Throws a ValueError if the element does not appear (use "in" to check without a ValueError).
- **list.remove(elem)** -- searches for the first instance of the given element and removes it (throws ValueError if not present)
- **list.sort()** -- sorts the list in place (does not return it). (The sorted() function shown later is preferred.)
- **list.reverse()** -- reverses the list in place (does not return it)
- **list.pop(index)** -- removes and returns the element at the given index. Returns the rightmost element if index is omitted (roughly the opposite of append()).

Notice that these are *methods* on a list object, while len() is a function that takes the list (or string or whatever) as an argument.

# **Loop over dictionary**

In Python 3, you need the `items()` method to loop over a dictionary:

```
world = { "afghanistan":30.55,
          "albania":2.77,
          "algeria":39.21 }

for key, value in world.items() :
    print(key + " -- " + str(value))

```

Remember the `europe` dictionary that contained the names of some European countries as key and their capitals as corresponding value? Go ahead and write a loop to iterate over it!

**Instructions:**

Write a `for` loop that goes through each key:value pair of `europe`. On each iteration, `"the capital of x is y"` should be printed out, where x is the key and y is the value of the pair.

```python
# Definition of dictionary
europe = {'spain':'madrid', 'france':'paris', 'germany':'berlin',
          'norway':'oslo', 'italy':'rome', 'poland':'warsaw', 'austria':'vienna' }
          
# Iterate over europe
for key, value in europe.items(): 
    print("the capital of " + key + " is " + value)
```

# **Loop over NumPy array**

If you're dealing with a 1D NumPy array, looping over all elements can be as simple as:

```
for x in my_array :
    ...

```

If you're dealing with a 2D NumPy array, it's more complicated. A 2D array is built up of multiple 1D arrays. To explicitly iterate over all separate elements of a multi-dimensional array, you'll need this syntax:

```
for x in np.nditer(my_array) :
    ...

```

Two NumPy arrays that you might recognize from the intro course are available in your Python session: `np_height`, a NumPy array containing the heights of Major League Baseball players, and `np_baseball`, a 2D NumPy array that contains both the heights (first column) and weights (second column) of those players.

**Instructions**

- Import the `numpy` package under the local alias `np`.
- Write a `for` loop that iterates over all elements in `np_height` and prints out `"x inches"` for each element, where x is the value in the array.
- Write a `for` loop that visits every element of the `np_baseball` array and prints it out.

```python
# Import numpy as np
import numpy as np

# For loop over np_height
for x in np.nditer(np_height):
    print(str(x) + " inches")

# For loop over np_baseball
for c in np.nditer(np_baseball):
    print(str(c))
```

# **Loop over DataFrame (2)**

The row data that's generated by `iterrows()` on every run is a Pandas Series. This format is not very convenient to print out. Luckily, you can easily select variables from the Pandas Series using square brackets:

```python
for lab, row in brics.iterrows() :
    print(row['country'])
```

**Instructions**

- Using the iterators `lab` and `row`, adapt the code in the for loop such that the first iteration prints out `"US: 809"`, the second iteration `"AUS: 731"`, and so on.
- The output should be in the form `"country: cars_per_cap"`. Make sure to print out this exact string (with the correct spacing).
    - *You can use `str()` to convert your integer data to a string so that you can print it in conjunction with the country label.*

```python
# Import cars data
import pandas as pd
cars = pd.read_csv('cars.csv', index_col = 0)

# Adapt for loop
for lab, row in cars.iterrows() :
    print(str(lab) + ": " + str(row["cars_per_cap"]))
    
-------------------------------------------------------------------

US: 809
AUS: 731
JPN: 588
IN: 18
RU: 200
MOR: 70
EG: 45
```

# **Add column (1)**

In the video, Hugo showed you how to add the length of the country names of the `brics` DataFrame in a new column:

```
for lab, row in brics.iterrows() :
    brics.loc[lab, "name_length"] = len(row["country"])
```

You can do similar things on the `cars` DataFrame.

**Instructions**

- Use a `for` loop to add a new column, named `COUNTRY`, that contains a uppercase version of the country names in the `"country"` column. You can use the string method `upper()` for this.
- To see if your code worked, print out `cars`. Don't indent this code, so that it's not part of the `for` loop.

```python
# Import cars data
import pandas as pd
cars = pd.read_csv('cars.csv', index_col = 0)

# Code for loop that adds COUNTRY column
for lab, row in cars.iterrows():
    cars.loc[lab, "COUNTRY"] = row["country"].upper()

# Print cars
print(cars)
---------------------------------------------------------------------------
     cars_per_cap        country  drives_right        COUNTRY
US            809  United States          True  UNITED STATES
AUS           731      Australia         False      AUSTRALIA
JPN           588          Japan         False          JAPAN
IN             18          India         False          INDIA
RU            200         Russia          True         RUSSIA
MOR            70        Morocco          True        MOROCCO
EG             45          Egypt          True          EGYPT
```

# **Add column (2)**

Using `iterrows()` to iterate over every observation of a Pandas DataFrame is easy to understand, but not very efficient. On every iteration, you're creating a new Pandas Series.

If you want to add a column to a DataFrame by calling a function on another column, the `iterrows()` method in combination with a `for` loop is not the preferred way to go. Instead, you'll want to use `apply()`.

Compare the `iterrows()` version with the `apply()` version to get the same result in the `brics` DataFrame:

```
for lab, row in brics.iterrows() :
    brics.loc[lab, "name_length"] = len(row["country"])

brics["name_length"] = brics["country"].apply(len)

```

We can do a similar thing to call the `upper()` method on every name in the `country` column. However, `upper()` is a **method**, so we'll need a slightly different approach:

**Instructions**

- Replace the `for` loop with a one-liner that uses `.apply(str.upper)`. The call should give the same result: a column `COUNTRY` should be added to `cars`, containing an uppercase version of the country names.
- As usual, print out `cars` to see the fruits of your hard labor

```python
# Import cars data
import pandas as pd
cars = pd.read_csv('cars.csv', index_col = 0)

# Use .apply(str.upper)
for lab, row in cars.iterrows() :
    cars["COUNTRY"] = cars["country"].apply(str.upper)

print(cars)
-------------------------------------------------------------
     cars_per_cap        country  drives_right        COUNTRY
US            809  United States          True  UNITED STATES
AUS           731      Australia         False      AUSTRALIA
JPN           588          Japan         False          JAPAN
IN             18          India         False          INDIA
RU            200         Russia          True         RUSSIA
MOR            70        Morocco          True        MOROCCO
EG             45          Egypt          True          EGYPT
```

# **Random float**

Randomness has many uses in science, art, statistics, cryptography, gaming, gambling, and other fields. You're going to use randomness to simulate a game.

All the functionality you need is contained in the `random` package, a sub-package of `numpy`. In this exercise, you'll be using two functions from this package:

- `seed()`: sets the random seed, so that your results are reproducible between simulations. As an argument, it takes an integer of your choosing. If you call the function, no output will be generated.
- `rand()`: if you don't specify any arguments, it generates a random float between zero and one.

**Instructions**

- Import `numpy` as `np`.
- Use `seed()` to set the seed; as an argument, pass `123`.
- Generate your first random float with `rand()` and print it out.

```python
# Import numpy as np
import numpy as np

# Set the seed
np.random.seed(123)

# Generate and print random float
print(np.random.rand())
-------------------------------------------------------------
0.6964691855978616
```

# **Roll the dice**

In the previous exercise, you used `rand()`, that generates a random float between 0 and 1.

As Hugo explained in the video you can just as well use `randint()`, also a function of the `random` package, to generate integers randomly. The following call generates the integer 4, 5, 6 or 7 randomly. **8 is not included**.

```python
import numpy as np
np.random.randint(4, 8)
```

NumPy has already been imported as `np` and a seed has been set. Can you roll some dice?

**Instructions**

- Use `randint()` with the appropriate arguments to randomly generate the integer 1, 2, 3, 4, 5 or 6. This simulates a dice. Print it out.
- Repeat the outcome to see if the second throw is different. Again, print out the result.

```python
# Import numpy and set seed
import numpy as np
np.random.seed(123)

# Use randint() to simulate a dice
print(np.random.randint(1,7))

# Use randint() again
print(np.random.randint(1,7))
```

# Random Step

In the Empire State Building bet, your next move depends on the number you get after throwing the dice. We can perfectly code this with an `if`-`elif`-`else` construct!

The sample code assumes that you're currently at step 50. Can you fill in the missing pieces to finish the script? `numpy` is already imported as `np` and the seed has been set to `123`, so you don't have to worry about that anymore.

**Instruction**

- Roll the dice. Use `randint()` to create the variable `dice`.
- Finish the `ifelifelse` construct by replacing `___`:
- If `dice` is 1 or 2, you go one step down.
- if `dice` is 3, 4 or 5, you go one step up.
- Else, you throw the dice again. The number on the dice is the number of steps you go up.
- Print out `dice` and `step`. Given the value of `dice`, was `step` updated correctly?

```python
# NumPy is imported, seed is set

# Starting step
step = 50

# Roll the dice
dice = np.random.randint(1,7)

# Finish the control construct
if dice <= 2 :
    step = step - 1
elif dice <= 5 :
    step + 1
else :
    step = step + np.random.randint(1,7)

# Print out dice and step
print(dice)
print(step)
-------------------------------------------------------------
6
50
```

# Random Walk

Before, you have already written Python code that determines the next step based on the previous step. Now it's time to put this code inside a `for` loop so that we can simulate a random walk.

`numpy` has been imported as `np`.

**Instructions**

- Make a list `random_walk` that contains the first step, which is the integer 0.
- Finish the `for` loop:
- The loop should run `100` times.
- On each iteration, set `step` equal to the last element in the `random_walk` list. You can use the index `1` for this.
- Next, let the `ifelifelse` construct update `step` for you.
- The code that appends `step` to `random_walk` is already coded.
- Print out `random_walk`.

```python
# NumPy is imported, seed is set

# Initialize random_walk
random_walk = [0]

# Complete the ___
for x in range(100) :
    # Set step: last element in random_walk
    step = random_walk[-1]

    # Roll the dice
    dice = np.random.randint(1,7)

    # Determine next step
    if dice <= 2:
        step = step - 1
    elif dice <= 5:
        step = step + 1
    else:
        step = step + np.random.randint(1,7)

    # append next_step to random_walk
    random_walk.append(step)

# Print random_walk
print(random_walk)
-------------------------------------------------------------
[0, 3, 4, 5, 4, 5, 6, 7, 6, 5, 4, 3, 2, 1, 0, 0, 1, 6, 5, 4, 5, 4, 5, 6, 7, 8, 9, 8, 9, 8, 9, 10, 11, 12, 11, 15, 16, 15, 16, 15, 16, 17, 18, 19, 20, 21, 22, 25, 26, 27, 28, 33, 34, 38, 39, 38, 39, 40, 39, 40, 41, 43, 44, 45, 44, 43, 44, 45, 44, 43, 44, 45, 47, 46, 45, 46, 45, 46, 47, 48, 50, 49, 50, 51, 52, 53, 54, 53, 52, 53, 52, 53, 54, 53, 56, 57, 58, 59, 58, 59, 60]
```

Things are shaping up nicely! You already have code that calculates your location in the Empire State Building after 100 dice throws. However, there's something we haven't thought about - you can't go below 0!

A typical way to solve problems like this is by using `max()`. If you pass `max()` two arguments, the biggest one gets returned. For example, to make sure that a variable `x` never goes below `10` when you decrease it, you can use:

```python
x = max(10, x - 1)
```

**Instructions**

- Use `max()` in a similar way to make sure that `step` doesn't go below zero if `dice <= 2`.
- Hit *Submit Answer* and check the contents of `random_walk`.

```python
# NumPy is imported, seed is set

# Initialize random_walk
random_walk = [0]

for x in range(100) :
    step = random_walk[-1]
    dice = np.random.randint(1,7)

    if dice <= 2:
        # Replace below: use max to make sure step can't go below 0
        step = max(0, step - 1)
    elif dice <= 5:
        step = step + 1
    else:
        step = step + np.random.randint(1,7)

    random_walk.append(step)

print(random_walk)
```

# **Visualize the walk**

Let's visualize this random walk! Remember how you could use `matplotlib` to build a line plot?

```python
import matplotlib.pyplot as plt
plt.plot(x, y)
plt.show()
```

The first list you pass is mapped onto the `x` axis and the second list is mapped onto the `y` axis.

If you pass only one argument, Python will know what to do and will use the index of the list to map onto the `x` axis, and the values in the list onto the `y` axis.

**Instructions**

Add some lines of code after the `for` loop:

- Import `matplotlib.pyplot` as `plt`.
- Use `plt.plot()` to plot `random_walk`.
- Finish off with `plt.show()` to actually display the plot.

```python
# NumPy is imported, seed is set

# Initialization
random_walk = [0]

for x in range(100) :
    step = random_walk[-1]
    dice = np.random.randint(1,7)

    if dice <= 2:
        step = max(0, step - 1)
    elif dice <= 5:
        step = step + 1
    else:
        step = step + np.random.randint(1,7)

    random_walk.append(step)

# Import matplotlib.pyplot as plt
import matplotlib.pyplot as plt

# Plot random_walk
plt.plot(random_walk)

# Show the plot
plt.show()
```

![image.png](Python%20for%20Social%20Data%20Science%201ebfbaff0e29804995b9f33bfaf8b449/image.png)

# **Simulate multiple walks**

A single random walk is one thing, but that doesn't tell you if you have a good chance at winning the bet.

To get an idea about how big your chances are of reaching 60 steps, you can repeatedly simulate the random walk and collect the results. That's exactly what you'll do in this exercise.

The sample code already sets you off in the right direction. Another `for` loop is wrapped around the code you already wrote. It's up to you to add some bits and pieces to make sure all of the results are recorded correctly.

**Note: Don't change anything about the initialization of `all_walks` that is given. Setting any number inside the list will cause the exercise to crash!**

**Instructions**

- Fill in the specification of the `for` loop so that the random walk is simulated five times.
- After the `random_walk` array is entirely populated, append the array to the `all_walks` list.
- Finally, after the top-level `for` loop, print out `all_walks`.

```python
# NumPy is imported; seed is set

# Initialize all_walks (don't change this line)
all_walks = []

# Simulate random walk five times
for i in range(5) :

    # Code from before
    random_walk = [0]
    for x in range(100) :
        step = random_walk[-1]
        dice = np.random.randint(1,7)

        if dice <= 2:
            step = max(0, step - 1)
        elif dice <= 5:
            step = step + 1
        else:
            step = step + np.random.randint(1,7)
        random_walk.append(step)

    # Append random_walk to all_walks
    all_walks.append(random_walk)

# Print all_walks
print(all_walks)
```

# **Visualize all walks**

`all_walks` is a list of lists: every sub-list represents a single random walk. If you convert this list of lists to a NumPy array, you can start making interesting plots! `matplotlib.pyplot` is already imported as `plt`.

The nested `for` loop is already coded for you - don't worry about it. For now, focus on the code that comes after this `for` loop.

**Instructions**

- Use `np.array()` to convert `all_walks` to a NumPy array, `np_aw`.
- Try to use `plt.plot()` on `np_aw`. Also include `plt.show()`. Does it work out of the box?
- Transpose `np_aw` by calling `np.transpose()` on `np_aw`. Call the result `np_aw_t`. Now every row in `np_all_walks` represents the position after 1 throw for the five random walks.
- Use `plt.plot()` to plot `np_aw_t`; also include a `plt.show()`. Does it look better this time?

```python
# numpy and matplotlib imported, seed set.

# initialize and populate all_walks
all_walks = []
for i in range(5) :
    random_walk = [0]
    for x in range(100) :
        step = random_walk[-1]
        dice = np.random.randint(1,7)
        if dice <= 2:
            step = max(0, step - 1)
        elif dice <= 5:
            step = step + 1
        else:
            step = step + np.random.randint(1,7)
        random_walk.append(step)
    all_walks.append(random_walk)

# Convert all_walks to NumPy array: np_aw
np_aw = np.array(all_walks)

# Plot np_aw and show
plt.plot(np_aw)
plt.show()

# Clear the figure
plt.clf()

# Transpose np_aw: np_aw_t
np_aw_t = np.transpose(np_aw)

# Plot np_aw_t and show
plt.plot(np_aw_t)
plt.show()
```

# **Implement clumsiness**

With this neatly written code of yours, changing the number of times the random walk should be simulated is super-easy. You simply update the `range()` function in the top-level `for` loop.

There's still something we forgot! You're a bit clumsy and you have a 0.5% chance of falling down. That calls for another random number generation. Basically, you can generate a random float between `0` and `1`. If this value is less than or equal to 0.005, you should reset step to 0.

**Instructions**

- Change the `range()` function so that the simulation is performed 20 times.
- Finish the `if` condition so that `step` is set to 0 if a random float is less or equal to 0.005. Use `np.random.rand()`.

```python
# numpy and matplotlib imported, seed set

# clear the plot so it doesn't get cluttered if you run this many times
plt.clf()

# Simulate random walk 20 times
all_walks = []
for i in range(20) :
    random_walk = [0]
    for x in range(100) :
        step = random_walk[-1]
        dice = np.random.randint(1,7)
        if dice <= 2:
            step = max(0, step - 1)
        elif dice <= 5:
            step = step + 1
        else:
            step = step + np.random.randint(1,7)

        # Implement clumsiness
        if np.random.rand() <= 0.005:
            step = 0

        random_walk.append(step)
    all_walks.append(random_walk)

# Create and plot np_aw_t
np_aw_t = np.transpose(np.array(all_walks))
plt.plot(np_aw_t)
plt.show()
```

![image.png](Python%20for%20Social%20Data%20Science%201ebfbaff0e29804995b9f33bfaf8b449/image%201.png)

# **Plot the distribution**

All these fancy visualizations have put us on a sidetrack. We still have to solve the million-dollar problem: *What are the odds that you'll reach 60 steps high on the Empire State Building?*

Basically, you want to know about the end points of all the random walks you've simulated. These end points have a certain distribution that you can visualize with a histogram.

Note that if your code is taking too long to run, you might be plotting a histogram of the wrong data!

**Instructions**

- To make sure we've got enough simulations, go crazy. Simulate the random walk 500 times.
- From `np_aw_t`, select the last row. This contains the endpoint of all 500 random walks you've simulated. Store this NumPy array as `ends`.
- Use `plt.hist()` to build a histogram of `ends`. Don't forget `plt.show()` to display the plot.

```python
# numpy and matplotlib imported, seed set

# Simulate random walk 500 times
all_walks = []
for i in range(500) :
    random_walk = [0]
    for x in range(100) :
        step = random_walk[-1]
        dice = np.random.randint(1,7)
        if dice <= 2:
            step = max(0, step - 1)
        elif dice <= 5:
            step = step + 1
        else:
            step = step + np.random.randint(1,7)
        if np.random.rand() <= 0.001 :
            step = 0
        random_walk.append(step)
    all_walks.append(random_walk)

# Create and plot np_aw_t
np_aw_t = np.transpose(np.array(all_walks))

# Select last row from np_aw_t: ends
ends = np_aw_t[-1, :]

# Plot histogram of ends, display plot
plt.hist(ends)
plt.show()
```

![image.png](Python%20for%20Social%20Data%20Science%201ebfbaff0e29804995b9f33bfaf8b449/image%202.png)

---

# **Slicing in both directions**

You've seen slicing DataFrames by rows and by columns, but since DataFrames are two-dimensional objects, it is often natural to slice both dimensions at once. That is, by passing two arguments to `.loc[]`, you can subset by rows and columns in one go.

`pandas` is loaded as `pd`. `temperatures_srt` is indexed by country and city, has a sorted index, and is available.

```python
Slice rows with code like df.loc[("a", "b"):("c", "d")].
Slice columns with code like df.loc[:, "e":"f"].
Slice both ways with code like df.loc[("a", "b"):("c", "d"), "e":"f"].
```

**Instructions:**

- Use `.loc[]` slicing to subset rows from India, Hyderabad to Iraq, Baghdad.
- Use `.loc[]` slicing to subset columns from `date` to `avg_temp_c`.
- Slice in both directions at once from Hyderabad to Baghdad, and `date` to `avg_temp_c`.

```python
# Subset rows from India, Hyderabad to Iraq, Baghdad
print(temperatures_srt.loc[("India", "Hyderabad"):("Iraq", "Baghdad")])

# Subset columns from date to avg_temp_c
print(temperatures_srt.loc[:, "date":"avg_temp_c"])

# Subset in both directions at once
print(temperatures_srt.loc[("India", "Hyderabad"):("Iraq", "Baghdad"), "date":"avg_temp_c"])
```

**Instructions:**

- Use Boolean conditions, not `.isin()` or `.loc[]`, and the full date `"yyyy-mm-dd"`, to subset `temperatures` for rows where the `date` column is in 2010 and 2011 and print the results.
- Set the index of `temperatures` to the `date` column and sort it.
- Use `.loc[]` to subset `temperatures_ind` for rows in 2010 and 2011.
- Use `.loc[]` to subset `temperatures_ind` for rows from August 2010 to February 2011.

```python
# Use Boolean conditions to subset temperatures for rows in 2010 and 2011
temperatures_bool = temperatures[(temperatures["date"] >= "2010-01-01") & (temperatures["date"] <= "2011-12-31")]
print(temperatures_bool)

# Set date as the index and sort the index
temperatures_ind = temperatures.set_index("date").sort_index()

# Use .loc[] to subset temperatures_ind for rows in 2010 and 2011
print(temperatures_ind.loc["2010":"2011"])

# Use .loc[] to subset temperatures_ind for rows from Aug 2010 to Feb 2011
print(temperatures_ind.loc["2010-08":"2011-02"])
```

### **Subsetting by row/column number**

The most common ways to subset rows are the ways we've previously discussed: using a Boolean condition or by index labels. However, it is also occasionally useful to pass row numbers.

This is done using `.iloc[]`, and like `.loc[]`, it can take two arguments to let you subset by rows and columns.

`pandas` is loaded as `pd`. `temperatures` (without an index) is available.

**Instructions:**

Use `.iloc[]` on `temperatures` to take subsets.

- Get the 23rd row, 2nd column (index positions 22 and 1).
- Get the first 5 rows (index positions 0 to 5).
- Get all rows, columns 3 and 4 (index positions 2 to 4).
- Get the first 5 rows, columns 3 and 4.

```python
# Get 23rd row, 2nd column (index 22, 1)
print(temperatures.iloc[22, 1])

# Use slicing to get the first 5 rows
print(temperatures.iloc[:5])

# Use slicing to get columns 3 to 4
print(temperatures.iloc[:, 2:4])

# Use slicing in both directions at once
print(temperatures.iloc[:5, 2:4])
```

---

# **Pivot temperature by city and year**

It's interesting to see how temperatures for each city change over time—looking at every month results in a big table, which can be tricky to reason about. Instead, let's look at how temperatures change by year.

You can access the components of a date (year, month and day) using code of the form `dataframe["column"].dt.component`. For example, the month component is `dataframe["column"].dt.month`, and the year component is `dataframe["column"].dt.year`.

Once you have the year column, you can create a pivot table with the data aggregated by city and year, which you'll explore in the coming exercises.

`pandas` is loaded as `pd`. `temperatures` is available.

**Instructions:**

- Add a `year` column to `temperatures`, from the `year` component of the `date` column.
- Make a pivot table of the `avg_temp_c` column, with `country` and `city` as rows, and `year` as columns. Assign to `temp_by_country_city_vs_year`, and *look at the result*.

```python
# Add a year column to temperatures
temperatures["year"] = temperatures["date"].dt.year

# Pivot avg_temp_c by country and city vs year
temp_by_country_city_vs_year = temperatures.pivot_table("avg_temp_c", index = ["country", "city"], columns = "year")

# See the result
print(temp_by_country_city_vs_year)
```

# **Subsetting pivot tables**

A pivot table is just a DataFrame with sorted indexes, so the techniques you have learned already can be used to subset them. In particular, the `.loc[]` + slicing combination is often helpful.

`pandas` is loaded as `pd`. `temp_by_country_city_vs_year` is available.

**Instructions:**

Use `.loc[]` on `temp_by_country_city_vs_year` to take subsets.

- From Egypt to India.
- From Egypt, Cairo to India, Delhi.
- From Egypt, Cairo to India, Delhi, and 2005 to 2010.

```python
# Subset for Egypt to India
temp_by_country_city_vs_year.loc["Egypt":"India"]

# Subset for Egypt, Cairo to India, Delhi
temp_by_country_city_vs_year.loc[("Egypt","Cairo"):("India","Delhi")]

# Subset for Egypt, Cairo to India, Delhi, and 2005 to 2010
temp_by_country_city_vs_year.loc[("Egypt","Cairo"):("India","Delhi"), "2005":"2010"]
```

# **Calculating on a pivot table**

Pivot tables are filled with summary statistics, but they are only a first step to finding something insightful. Often you'll need to perform further calculations on them. A common thing to do is to find the rows or columns where the highest or lowest value occurs.

Recall from Chapter 1 that you can easily subset a Series or DataFrame to find rows of interest using a logical condition inside of square brackets. For example: `series[series > value]`.

`pandas` is loaded as `pd` and the DataFrame `temp_by_country_city_vs_year` is available

**Instructions:** 

- Calculate the mean temperature for each year, assigning to `mean_temp_by_year`.
- Filter `mean_temp_by_year` for the year that had the highest mean temperature.
- Calculate the mean temperature for each city (across columns), assigning to `mean_temp_by_city`.
- Filter `mean_temp_by_city` for the city that had the lowest mean temperature.

```python
# Get the worldwide mean temp by year
mean_temp_by_year = temp_by_country_city_vs_year.mean()

# Filter for the year that had the highest mean temp
print(mean_temp_by_year[mean_temp_by_year == mean_temp_by_year.max()])

# Get the mean temp by city
mean_temp_by_city = temp_by_country_city_vs_year.mean(axis="columns")

# Filter for the city that had the lowest mean temp
print(mean_temp_by_city[mean_temp_by_city == mean_temp_by_city.min()])
```

---

## Visualizing Data

Bar plots are great for revealing relationships between categorical (size) and numeric (number sold) variables, but you'll often have to manipulate your data first in order to get the numbers you need for plotting.

`pandas` has been imported as `pd`, and `avocados` is available.

**Instructions:**

- Print the head of the `avocados` dataset. *What columns are available?*
- For each avocado size group, calculate the total number sold, storing as `nb_sold_by_size`.
- Create a bar plot of the number of avocados sold by size.
- Show the plot.

```python
# Import matplotlib.pyplot with alias plt
import matplotlib.pyplot as plt

# Look at the first few rows of data
print(avocados.head())

# Get the total number of avocados sold of each size
nb_sold_by_size = avocados.groupby("size")["nb_sold"].sum()

# Create a bar plot of the number of avocados sold by size
nb_sold_by_size.plot(kind = "bar")

# Show the plot
plt.show()
```

Line plots are designed to visualize the relationship between two numeric variables, where each data values is connected to the next one. They are especially useful for visualizing the change in a number over time since each time point is naturally connected to the next time point. In this exercise, you'll visualize the change in avocado sales over three years.

`pandas` has been imported as `pd`, and `avocados` is available.

**Instructions:**

- Get the total number of avocados sold on each date. *The DataFrame has two rows for each date—one for organic, and one for conventional*. Save this as `nb_sold_by_date`.
- Create a line plot of the number of avocados sold.
- Show the plot.

```python
# Import matplotlib.pyplot with alias plt
import matplotlib.pyplot as plt

# Get the total number of avocados sold on each date
nb_sold_by_date = avocados.groupby("date")["nb_sold"].sum()

# Create a line plot of the number of avocados sold by date
nb_sold_by_date.plot(kind = "line")

# Show the plot
plt.show()
```

Scatter plots are ideal for visualizing relationships between numerical variables. In this exercise, you'll compare the number of avocados sold to average price and see if they're at all related. If they're related, you may be able to use one number to predict the other.

`matplotlib.pyplot` has been imported as `plt`, `pandas` has been imported as `pd`, and `avocados` is available.

**Instructions:**

- Create a scatter plot with `nb_sold` on the x-axis and `avg_price` on the y-axis. Title it `"Number of avocados sold vs. average price"`.
- Show the plot.

```python
# Scatter plot of avg_price vs. nb_sold with title
avocados.plot(x = "nb_sold", y = "avg_price", title = "Number of avocados sold vs. average price", kind = "scatter")

# Show the plot
plt.show()
```

![image.png](Python%20for%20Social%20Data%20Science%201ebfbaff0e29804995b9f33bfaf8b449/image%203.png)

Creating multiple plots for different subsets of data allows you to compare groups. In this exercise, you'll create multiple histograms to compare the prices of conventional and organic avocados.

`matplotlib.pyplot` has been imported as `plt` and `pandas` has been imported as `pd`.

**Instructions:**

- Subset `avocados` for the `"conventional"` `type` and create a histogram of the `avg_price` column.
- Create a histogram of `avg_price` for `"organic"` `type` avocados.
- Add a legend to your plot, with the names `"conventional"` and `"organic"`.
- Show your plot.

```python
# Histogram of conventional avg_price 
avocados[avocados["type"] == "conventional"]["avg_price"].hist()

# Histogram of organic avg_price
avocados[avocados["type"] == "organic"]["avg_price"].hist()

# Add a legend
plt.legend(["conventional", "organic"])

# Show the plot
plt.show()

-------

# Modify bins to 20
avocados[avocados["type"] == "conventional"]["avg_price"].hist(alpha=0.5, bins=20)

# Modify bins to 20
avocados[avocados["type"] == "organic"]["avg_price"].hist(alpha=0.5, bins=20)

# Add a legend
plt.legend(["conventional", "organic"])

# Show the plot
plt.show()
```

![image.png](Python%20for%20Social%20Data%20Science%201ebfbaff0e29804995b9f33bfaf8b449/image%204.png)

# **Finding missing values**

Missing values are everywhere, and you don't want them interfering with your work. Some functions ignore missing data by default, but that's not always the behavior you might want. Some functions can't handle missing values at all, so these values need to be taken care of before you can use them. If you don't know where your missing values are, or if they exist, you could make mistakes in your analysis. In this exercise, you'll determine if there are missing values in the dataset, and if so, how many.

`pandas` has been imported as `pd` and `avocados_2016`, a subset of `avocados` that contains only sales from 2016, is available.

**Instructions:**

- Print a DataFrame that shows whether each value in `avocados_2016` is missing or not.
- Print a summary that shows whether *any* value in each column is missing or not.
- Create a bar plot of the total number of missing values in each column.

```python
# Import matplotlib.pyplot with alias plt
import matplotlib.pyplot as plt

# Check individual values for missing values
print(avocados_2016.isna())

# Check each column for missing values
print(avocados_2016.isna().any())

# Bar plot of missing values by variable
avocados_2016.isna().sum().plot(kind = "bar")

# Show plot
plt.show()
```

![image.png](Python%20for%20Social%20Data%20Science%201ebfbaff0e29804995b9f33bfaf8b449/image%205.png)

# **Removing missing values**

Now that you know there are some missing values in your DataFrame, you have a few options to deal with them. One way is to remove them from the dataset completely. In this exercise, you'll remove missing values by removing all rows that contain missing values.

`pandas` has been imported as `pd` and `avocados_2016` is available.

**Instructions:**

- Remove the rows of `avocados_2016` that contain missing values and store the remaining rows in `avocados_complete`.
- Verify that all missing values have been removed from `avocados_complete`. Calculate each column that has NAs and print.

```python
# Remove rows with missing values
avocados_complete = avocados_2016.dropna()

# Check if any columns contain missing values
print(avocados_complete.isna().any())
```

# **Replacing missing values**

Another way of handling missing values is to replace them all with the same value. For numerical variables, one option is to replace values with 0— you'll do this here. However, when you replace missing values, you make assumptions about what a missing value means. In this case, you will assume that a missing number sold means that no sales for that avocado type were made that week.

In this exercise, you'll see how replacing missing values can affect the distribution of a variable using histograms. You can plot histograms for multiple variables at a time as follows:

```
dogs[["height_cm", "weight_kg"]].hist()

```

`pandas` has been imported as `pd` and `matplotlib.pyplot` has been imported as `plt`. The `avocados_2016` dataset is available.

```python
# From previous step
cols_with_missing = ["small_sold", "large_sold", "xl_sold"]
avocados_2016[cols_with_missing].hist()
plt.show()

# Fill in missing values with 0
avocados_filled = avocados_2016.fillna(0)

# Create histograms of the filled columns
avocados_filled[cols_with_missing].hist()

# Show the plot
plt.show()
```