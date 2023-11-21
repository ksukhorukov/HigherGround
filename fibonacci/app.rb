#!/usr/bin/env ruby

require 'pry'

BASE_SEQUENCE = [1, 1, 2]

def print_base
  BASE_SEQUENCE.each_with_index { |i, e| puts "#{i}: #{e}" }
end

def fibonacci(merged_array = BASE_SEQUENCE, i = BASE_SEQUENCE.size + 1)
  current_number = merged_array.last + merged_array[merged_array.size - 2]
  puts "#{i}: #{current_number}"
  merged_array << current_number
  fibonacci(merged_array, i + 1)
end

print_base
fibonacci
