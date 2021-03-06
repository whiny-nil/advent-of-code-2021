require 'byebug'

require 'byebug'

def transform(input)
  input.strip.split("\n")
end

def input
  return @input if @input

  file_name = File.dirname(__FILE__) + '/input.txt'
  raw_input = if File.exist?(file_name)
                File.read(file_name)
              else
                ''
              end

  @input = transform(raw_input)
end

def test_input
  return @test_input if @test_input

  raw_test_input = <<~TESTINPUT
  TESTINPUT

  @test_input = transform(raw_test_input)
end

# helper methods
def assert(value, expected_value)
  puts(value == expected_value ? '.' : "Failed: Expected #{expected_value.inspect}, got #{value.inspect}")
end

# stuff for this problem
def solution1(_input)
  'Not implemented!'
end

def solution2(_input)
  'Not implemented!'
end

assert(solution1(@test_input), nil)
assert(solution2(@test_input), nil)

puts "Solution 1: #{solution1(@input)}"
puts "Solution 2: #{solution2(@input)}"
