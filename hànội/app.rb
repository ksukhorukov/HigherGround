#!/usr/bin/env ruby

require_relative './dependencies.rb'

App::usage if ARGV.size.zero?

Towers.new App::command_line_arguments
