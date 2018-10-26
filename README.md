# RUBY

- Object-Orientated 
- use snake_case 

## Variables
* Global Variable 
* Class Variable
* Instance Variable
* Local Variable
* Constants

### Global Variable
$

### Class Variable
@@

```ruby
class Fabric
  @@quantity = 0 

  def initialize(title, type)
    @title = title
    @type = type
    @@quantity += 1
    # add 1 to quantity everytime a fabric is created
  end
end
```

### Instance Variable
@
```ruby
class Fabric
  @@quantity = 0 

  def initialize(title, type)
    @title = title
    @type = type
    @@quantity += 1
    # add 1 to quantity everytime a fabric is created
  end
end
```

### Local Variable
Local variables start with a lowercase letter. No var necessary.

```ruby
variable = 10
message = 'Hello World'
puts variable
puts message
```

### Constants 

Start with uppercase 
```ruby
ABC = 1
Cde = 2
```

```ruby
Message = 'Hello World'
Message = "bye bye world"
puts Message
```
Will throw error as const are immutable 

## Data Types

### Nothingness

Ruby use nil 

```ruby
the_variable = nil
```

### Undefined 
```ruby
defined?(z)
=> nil
# if z is not defined 
```
undefined != nil
```ruby
y = nil
defined?(y)
=> "local-variable"
```
### Booleans
- true / false

```ruby
is_sleepy = true
have_time = false
```

### Numbers
* Fixnum: 23
* Bignum: 570283094822121
* Float: 32.21

### Methods
#### Checking
```ruby
4.integer? # true
```

#### Convert
```ruby
to_f => convert to float
to_i => convert to integer
to_s => convert to string
```


### Strings
"Hello World"
'Hello World'
```ruby
message = 'Hello World'
puts 'The Message is #{message}'
# => The Message is #{message}
puts "The Message is #{message}"
# => The Message is Hello World
```
"" allows for string interpolation and will escape for ' character
Other ways of escaping character: include \ infront of the character 

```ruby
puts 'I\'m Si Ya'
puts "He said, \"Welcome\""
```
#### Methods
* checking
  empty? -> true or false
  "hello".empty? #=> false
  " ".empty? #=> false
  "".empty? #=> true

* chomp
  returns a new string with the given record separator removed from the end of str(if present)
  usage:
  ```ruby
  answer = gets.chomp
  ```
  to remove the newline from the input
* clear
  makes string empty
  ```ruby
  a = "hello world"
  a.clear => ""
  ```

* str * integer
  return a new string containing integer copies 
  "Moo " * 3 #=> "Moo Moo Moo" 

* concat -> str
  ```ruby
  greet = "hello "
  greet << "Si Ya" #=> "hello Si Ya"
  greet.concat(". How are you?") #=> "hello Si Ya. How are you?"
  ```

* Index
  finding index -> integer or nil
  "hello".index('e') #=> 1

  rindex(substring[,integer]) -> integer or nil
  returns the index of last occurrence of the given substring or pattern (regexp)
  using index to get the character 
  str[integer] = new_str
  a = "Hello World"
  a[1] #=> "e"

  str[integer, integer] = new_str
  a[2,3] #=> "llo"
  str[range] = aString

* Format
  capitalize -> new_str
  capitalize the first character of the string
  ```ruby
  "hello world".capitalize #=> "Hello world" 
  "HELLO world".capitalize #=> "Hello world"
  ```

  capitalize! -> str / nil 
  modify the original string 
  return nil if no changes are made

  downcase -> new_str
  allow options to be pass in
  "HELLO world".downcase # => "hello world"

* replace -> str
  s = "night"
  s.replace "day" #=> "day"

* match(pattern) -> matchdata or nil
  match?(pattern) -> true or false

* reverse -> new_str
  return a new string in reverse order.
  "stressed".reverse #=> "desserts"

* slice(index) -> newString or nil
  slice(start, length) -> newString or nil
  ```ruby
  message = "hello world"
  message.slice(2) #=> "l"
  message.slice(2, 8) #=> "llo worl"
  message.slice(-4..-2) #=> "orl"
  ```
* split(pattern=nil, [limit]) -> array
```ruby
"hello".split #=> ["hello"]
"hello world".split #=> ["hello", "world"]
"hello world".split(" ") #=> ["hello", "world"]
"hello".split(//) #=> ["h", "e", "l", "l", "o"]
```

* convert 
 to_f, convert to float
 to_i, convert to integer
```ruby
 "123.45el".to_f #=> 1234.5
 "45.67 degrees".to_f #=> 45.67
 "12345".to_i #=> 12345
 "99 red balloons".to_i #=> 99
```
### Arrays
- Ordered or integer-indexed collection
- Creation: [] or Array.new
```ruby
arr = [1,2,3]
#=> [1,2,3]
arr1 = Array.new([4,5,6])
#=> [4,5,6]
arr2 = Array.new(3, true)
#=> [true, true, true]
empty_table = Array.new(3) { Array.new(3)}
#=> [[nil, nil, nil], [nil, nil, nil], [nil, nil, nil]]
```
- fill(obj) -> ary
- fill(obj, start [, length]) -> ary

```ruby
Array.new(3).fill("X") #=> [ "X", "X", "X"]
a = []
a.fill("X", 0, 3)
```

* Access using index or using at
```ruby
arr = [1, 2, 3, 4, 5, 6]
arr[2] #=> 3
arr[100] #=> nil
arr[-3] #=> 4
arr[2, 3], arr[2..4] #=> [3, 4, 5]

arr.at(0) #=> 1
arr.first #=> 1
arr.first(2) #=> [1,2]
arr.last #=> 6
```
take the first n element, drop -> opposite of take
```ruby
arr.take(3) #=> [1, 2, 3]
arr.drop(3) #=> [4, 5, 6]
```
- find_index(obj) -> int or nil
```ruby
a = ["ruby", "javascript", "python"]
a.index("ruby") #=> 0
a.index("golang") #=> nil
```

* Check 
- size, length, count : to get the array length
- arr.length or arr.count or arr.size
- empty? : check if array is empty
- arr.empty? => false
- include?(object) -> boolean

* Adding
push or << 
```ruby
arr.push(7) #=> [1, 2, 3, 4, 5, 6, 7]
arr << 8 #=> [1, 2, 3, 4, 5, 6, 7, 8]
```
- unshift add new item at the beginning of an array
- insert: add new element at any position, able to insert mutiple values at once

* Removing 
```
- pop -> remove last element and return it
- shift -> remove first element and return it
- delete_at -> remove element at a particular index
- delete -> remove a particular(all) element anywhere in an array
- delete_if { |item| block } -> ary
- delete if certain condition is met
- compact -> to remove nil from an array and return a new array
- compact! -> modify the original 
- uniq -> return a new array with unique element from the array
```ruby
a = [1, 2, 3, 1, 2 , 4, 2, 5]
a.uniq #=> [1, 2, 3, 4, 5]
```
- uniq! modify the original array
* Concat
```ruby
[1, 2, 3] * 3 #=> [ 1, 2, 3, 1, 2, 3, 1, 2, 3]
[ 1, 2, 3] + [ 4, 5] #=> [ 1, 2, 3, 4, 5]
```

* Clear
remove all element from array
```ruby
a = ["I", "Want", "To", "Sleep"]
a.clear #=> []
```

* Iterating

- each: leave the array unchanged
- reverse_each -> iterator in reverse order
```ruby
fruits = ["apple", "pear", "watermelon", "orange", "melon", "strawberry"]
fruits.each { |fruit| puts "i wan to eat #{fruit}"}
```
- each_index: pass the index of the element instead of element

- map : return a new array
```ruby
debts = [1, 2, 3, 4, 5]
next_month_debts = debts.map {|n| n * 5}
#=> next_month_debts = [5, 10, 15, 20, 25]
#=> debts = [1, 2, 3, 4, 5]
```

* Enumerator

- collect { |item| block } -> new_ary
  collect -> Enumerator
```
a = ["a", "b", "c", "d"]
a.collect { |x| x + "!" } #=> ["a!", "b!", "c!", "d!"]
a.map.with_index {|item, index| x * i } #=> ["", "b", "cc", "ddd"]
a
```

* Selecting
- select: return a new array
- reject: return a new array
```ruby
arr = [1, 2, 3, 4, 5, 6]
arr.select { |n| n > 3 } #=> [4, 5, 6]
arr.reject { |n| n < 3 } #=> [3, 4, 5, 6]
arr.drop_while { |n| n < 3 } #=> [3, 4, 5, 6]
arr #=> [1, 2, 3, 4, 5, 6]
```
Use select!, reject! to change the original array
delete_if and keep_if will modify the original array

* Comparing
using & : return a new array with common elements
```ruby
a = [1, 2 , 3, 4, 5, 6]
b = [2, 4, 6, 8]
z = a & b #=> [2, 4, 6]
```
compare if the array is equal
ary == other_ary : return boolean

* Flatten -> new_ary
flatten! to modify original array, return nil if no modification occurs
```
a = [[1, 2, 3], 4, 5, 6, [7, 8,[9,10]]]
z = a.flatten #=> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
```

* join(separator) -> str
return a str join with the separator
```ruby
a = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
z = a.join("-") #=> "1-2-3-4-5-6-7-8-9-10"
```

* Max -> obj
return the obj with maximum value
```ruby
a = [34, 54, 123, 543, 43, 12, 32 , 52, 123]
a.max #=> 543
```
* Min -> obj
return the obj with minimum value
```ruby
a = [34, 54, 123, 543, 43, 12, 32 , 52, 123]
a.min #=> 12
```

* reverse -> ary
use reverse! to modify the original ary 

* sample -> obj
```
death_list = ["john", "mary", "happy", "orlinda", "belinda", "may"]
to_kill = death_list.sample #=> "mary"
more_to_kill = death_list.sample(3) #=> ["belinda", "may", "john"]
```
* shuffle -> new_ary
returns a new array with elements of self shuffled 
shuffle! modify the original ary 

* slice(index) -> obj or nil
slice(start, length) -> new_ary or nil
slice(range) -> new_ary or nil
- returns the elements at index or return the subarray
- negative indices count backward from the end of the array
- slice! modify the original array

* Sort -> new_ary
```ruby
b = [21, 32, 112, 321, 21, 2, 3, 24]
b.sort #=> [2, 3, 21, 21, 24, 32, 112, 321]
b.sort { |x, y | y <=> x} #=> [321, 112, 32, 24, 21, 21, 3, 2]
```
sort! modify the original array
- sort_by & sort_by!

* Sum -> number (ruby 2.4.0)

```ruby
b = [21, 32, 112, 321, 21, 2, 3, 24]
b.sum #=> 536
```

* to_h -> hash
returns the result of interpreting ary as an array of [key, value]
```ruby
[[:coffee_bean, 1], [:water, 2]].to_h
#=> {:coffee_bean=>1, :water=>2}
```
### Ranges
```ruby
example_range = (1..10) # includes 10
another_range = (1...10) # not including 10
letters_range = ('a'..'z')
```

### Hashes
With key - value pairs 
creation: {} or Hash.new
```ruby
shane = {
  :gender => 'male',
  "age" => 26,
  :fav_food => 'pepper',

}
shane[:fav_food] 
#=> 'pepper'
shane["age"]
#=> 26
#=> to update or add new field
shane[:house] = "red roof"

```
### Misc
to let the program to wait for a while
* sleep
```ruby
sleep(4.minutes)
sleep(2.hours)
sleep 6 #=> sleep 6 seconds
```
* wait_until(timeout, message=nil) => Object
```ruby
@page.wait_until(5, 'Success not found on page') do
  @page.text.include? 'Success'
end
```


#### Symbols (TO DO: Read more)

```
country = :turkey
food = :turkey

country.object_id == food.object_id
=> true
```
### Operators
```
+
-
/
*
**
%

+=
-=
*=
/=
**=

==
!=
!
||
&&
```
Ruby has === operator but no !==
can use .equal?


### Class
In general, languages that use objects as a primary means of data abstraction are said to be Object Oriented Programming (OOP) languages.

What is an object in ruby? Basically everything that isn't a keyword.

```
class 

```
##### Inspect
use inspect to check the object 
### Proc, Lamda

#### Proc (came from procedure)
* useful for enumerations

```
  amt_arr = amt.split(" ").map(&:to_f)
```
same as 

```
  amt_arr = amt.split(" ").map {|s| s.to_f}
```

which split string to array and convert string to float value

```
# The same as people.collect { |p| p.name }
people.collect(&:name)

# The same as people.select { |p| p.manager? }.collect { |p| p.salary }
people.select(&:manager?).collect(&:salary)
```
(from online)





