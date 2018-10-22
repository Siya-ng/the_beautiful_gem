# RUBY

- Object-Orientated 
- use snake_case 

## Variables
* Global Variable 
* Class Variable
* Instance Variable
* Local Variable
* Constants

#### Global Variable
$

#### Class Variable
@@

```
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

#### Instance Variable
@
```
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

#### Local Variable
Local variables start with a lowercase letter. No var necessary.

```
variable = 10
message = 'Hello World'
puts variable
puts message
```

##### Constants 

Start with uppercase 
```
ABC = 1
Cde = 2
```

```
Message = 'Hello World'
Message = "bye bye world"
puts Message
```
Will throw error as const are immutable 

### Data Types

##### Nothingness

Ruby use nil 

```
the_variable = nil
```

###### Undefined 
```
defined?(z)
=> nil
# if z is not defined 
```
undefined != nil
```
y = nil
defined?(y)
=> "local-variable"
```
##### Booleans
- true / false

```
is_sleepy = true
have_time = false
```

##### Numbers
* Fixnum: 23
* Bignum: 570283094822121
* Float: 32.21

###### Methods
checking
```
4.integer? # true
```

convert
```
to_f => convert to float
to_i => convert to integer
to_s => convert to string
```


##### Strings
"Hello World"
'Hello World'
```
message = 'Hello World'
puts 'The Message is #{message}'
# => The Message is #{message}
puts "The Message is #{message}"
# => The Message is Hello World
```
"" allows for string interpolation and will escape for ' character
Other ways of escaping character: include \ infront of the character 

```
puts 'I\'m Si Ya'
puts "He said, \"Welcome\""
```
###### Methods
* checking
  empty? -> true or false
  "hello".empty? #=> false
  " ".empty? #=> false
  "".empty? #=> true

* chomp
  returns a new string with the given record separator removed from the end of str(if present)
  usage:
  ```
  answer = gets.chomp
  ```
  to remove the newline from the input
* clear
  makes string empty
  ```
  a = "hello world"
  a.clear => ""
  ```

* str * integer
  return a new string containing integer copies 
  "Moo " * 3 #=> "Moo Moo Moo" 

* concat -> str
  ```
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
  ```
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

##### Arrays
```
arr = [1,2,3]
#=> [1,2,3]
arr1 = Array.new([4,5,6])
#=> [4,5,6]
arr2 = Array.new(3, true)
#=> [true, true, true]
```

##### Ranges
```
example_range = (1..10) # includes 10
another_range = (1...10) # not including 10
letters_range = ('a'..'z')
```

#### Hashes
With key - value pairs 

```
shane = {
  :gender => 'male',
  :age => 26,
  :fav_food => 'pepper'
}
shane[:fav_food] 
=> 'pepper'
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





