#!/usr/bin/env ruby

require 'pry'
require 'colorize'

require_relative './towers.rb'
require_relative './app_helpers.rb'

App::usage if ARGV.size.zero?

Towers.new App::command_line_arguments
