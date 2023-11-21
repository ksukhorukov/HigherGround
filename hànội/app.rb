#!/usr/bin/env ruby

require 'pry'
require 'colorize'

require_relative './towers.rb'

Towers.new(10, :red)
Towers.new(8, :green)
Towers.new(6, :blue)
Towers.new(3, :yellow)