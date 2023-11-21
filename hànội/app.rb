#!/usr/bin/env ruby

require 'pry'
require 'colorize'

require_relative './towers.rb'

def usage 
  puts "Usage: #{$0} 5 purple"
  exit
end 

usage if ARGV.size == 0

n, color = ARGV[0].to_i, ARGV[1]&.to_s&.to_sym || :purple

Towers.new(n: n, color: color)
