#!/usr/bin/env ruby

require 'pry'
require 'colorize'

class Tower
  attr_reader :width, :height, 
    :border, :corpus, :courpus_size,
    :tabs, :max_width, :number_of_towers,
    :current_tower

  attr_accessor :tower_data

  def initialize(width = 5, height = 3, current_tower = 1, number_of_towers = 1)
    @width = width
    @height = height
    @tabs = tabs
    @number_of_towers = number_of_towers
    @current_tower = current_tower
    @tower_data = []

    calculate_geometry
  end 

  def draw
    tower_data.push border
    courpus_size.times { tower_data.push corpus }
    tower_data.push border
  end

  def calculate_geometry
    @border ||= '*' * width
    @corpus ||= '*' + ('*' * (width - 2)) + '*'
    @courpus_size ||= height - 2
    @max_width = number_of_towers * width
  end 

  def concatenate_tabs
    @border = tabs + @border
    @corpus = tabs + @corpus
  end 
end


class Towers
  @@default_width = 5
  @@default_height = 3

  attr_reader :number_of_towers, :current_tower

  def initialize(n = 5)
    @number_of_towers = n
    @current_tower = n

    draw
  end 

  def draw
    @current_tower = 1

    while current_tower <= number_of_towers do 
      current_width = @@default_width * current_tower
      current_height = @@default_height * current_tower

      Tower.new(current_width, current_height, current_tower, number_of_towers).draw

      @current_tower += 1 
    end 
  end
end 

Towers.new