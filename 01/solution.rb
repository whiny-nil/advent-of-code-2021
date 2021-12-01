require 'byebug'

def transform(input)
  input.strip.split("\n").map(&:to_i)
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
    199
    200
    208
    210
    200
    207
    240
    269
    260
    263
  TESTINPUT

  @test_input = transform(raw_test_input)
end

# helper methods
def assert(value, expected_value)
  puts(value == expected_value ? '.' : "Failed: Expected #{expected_value.inspect}, got #{value.inspect}")
end

# stuff for this problem
def solution1(input)
  previous_depth = input.shift
  greater = 0

  input.each do |current_depth|
    greater += 1 if current_depth > previous_depth
    previous_depth = current_depth
  end

  greater
end

def solution2(_input)
  'Not implemented!'
end

assert(solution1(test_input), 7)
# assert(solution2(@test_input), nil)

puts "Solution 1: #{solution1(input)}"
# puts "Solution 2: #{solution2(@input)}"
