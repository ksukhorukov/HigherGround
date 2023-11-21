#!/usr/bin/env ruby

require 'pry'
require 'colorize'

require_relative './towers.rb'
require_relative './app_helpers.rb'

App::usage if ARGV.size == 0

n, color = App::command_line_arguments

Towers.new(n: n, color: color)
