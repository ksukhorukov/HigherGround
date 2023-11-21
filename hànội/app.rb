#!/usr/bin/env ruby

require 'pry'
require 'colorize'

require_relative './towers.rb'

def usage 
  puts "Usage: #{$0} 5 purple"
  exit
end 

def command_line_arguments
  [ARGV[0].to_i, ARGV[1]&.to_s&.to_sym || :purple]
end

usage if ARGV.size == 0

n, color = command_line_arguments

Towers.new(n: n, color: color)
