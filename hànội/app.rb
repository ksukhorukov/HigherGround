#!/usr/bin/env ruby

require 'pry'
require 'colorize'

require_relative './towers.rb'

Towers.new(5, :red)
Towers.new(5, :green)
Towers.new(5, :blue)
Towers.new(5, :yellow)