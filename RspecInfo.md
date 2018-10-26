# Rspec
* Unit test framework
* Behavior driven developement tool

```
gem install rspec
```


## Syntax
### Describe
* used to define an collection of tests("Example Group")
* can take a class name and/or string argument 
* pass block argument to describe

### Context 
* similar to describe
* can take a class name and/or string argument 
* should use a block with context 
* it encloses tests of a certain type
* not mandatory but helps to add more details

### It 
* used to define an "Example"
* accept a class name and/or string argument 
* pass block argument to describe
* string argument often use "should" : describe specific behavior 

### Expect
* define an "Expectation" in Rspec

```ruby
expect(message).to eql "Hello World!"
```

#### to keyword
* used as part of expect statements 
* there is also not_to keyword

#### eql keyword
* special RSpec keyword called a Matcher

## Example 
from (https://www.tutorialspoint.com/rspec/rspec_writing_specs.htm)

```ruby 
require 'string_analyzer' 

describe StringAnalyzer do 
   context "With valid input" do 
      
      it "should detect when a string contains vowels" do 
         sa = StringAnalyzer.new 
         test_string = 'uuu' 
         expect(sa.has_vowels? test_string).to be true 
      end 
		
      it "should detect when a string doesn't contain vowels" do 
         sa = StringAnalyzer.new 
         test_string = 'bcdfg' 
         expect(sa.has_vowels? test_string).to be false
      end 
      
   end 
end
```

## Matcher

| Matcher | Description | Example|
| --------| :----------:| ------:| 
| eq | == expected | expect(actual).to eq expected |
| equal | actual.equal?(expected) | expect(actual).to equal expected |

#### Comparison Matchers
* >
* >=
* <
* <=
| Matcher | Description | Example|
| --------| :----------:| ------:| 
| be_between inclusive  | Passes when actual is <= min and >= max | expect(actual).to be_between(min, max).inclusive |
| be_between exclusive | Passes when actual is < min and > max | expect(actual).to be_between(min, max).exclusive |
| match	 | Passes when actual matches a regular expression | expect(actual).to match(/regex/) |

#### Class/Type Matchers
* be_instance_of
* be_kind_of
* respond_to

#### True/False/Nil Matchers
* be true 
* be false
* be_truthy 
* be_falsey
* be_nil

#### Error Matchers
* raise_error(ErrorClass)
* raise_error("error message")
* raise_error(ErrorClass, "error message")

## RSpec Doubles or RSpec Mocks

```ruby
class ClassRoom 
   def initialize(students) 
      @students = students 
   end
   
   def list_student_names 
      @students.map(&:name).join(',') 
   end 
end

describe ClassRoom do 
   it 'the list_student_names method should work correctly' do 
      student1 = double('student') 
      student2 = double('student') 
      
      allow(student1).to receive(:name) { 'John Smith'} 
      allow(student2).to receive(:name) { 'Jill Smith'} 
      
      cr = ClassRoom.new [student1,student2]
      expect(cr.list_student_names).to eq('John Smith,Jill Smith') 
   end 
end
```
* allows to test code that relies on a class

## before and after hooks
* before(:each) 
* after(:each)

```ruby 
require_relative 'spec_helper'
require_relative '../lib/digital_item'

describe Digital_item do
  before(:context) do
    @digital_item = Digital_item.new('Some app', 1.99)
  end

  describe 'Initialization' do
    it 'is an instance of the Item class' do
      expect(@digital_item).to be_instance_of(Digital_item)
    end
    it 'should be an item' do
      expect(@digital_item).to be_kind_of(Item)
    end
    it 'is assigned a name' do
      expect(@digital_item.name).to eq('Some app')
    end
    it 'is assigned a price' do
      expect(@digital_item.price).to eq(1.99)
    end
  end
end
```