#!/usr/bin/env ruby

require 'pry'
require 'colorize'

require_relative './towers.rb'

def usage 
  puts "#{$0} 5 purple"
  exit
end 

n, color = ARGV[0].to_i, ARGV[1].to_s.to_sym || :purple

usage  if ARGV.size < 2 

Towers.new(n: n, color: color)
