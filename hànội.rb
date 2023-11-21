#!/usr/bin/env ruby

class Tower
  attr_reader :width, :height, :border, :corpus, :courpus_size

  def initialize(width = 5, height = 3)
    @width = width
    @height = height

    calculate_geometry
  end 

  def draw
    puts border
    courpus_size.times { puts corpus }
    puts border
  end

  def calculate_geometry
    @border ||= '*' * width
    @corpus ||= '*' + ('*' * (width - 2)) + '*'
    @courpus_size ||= height - 2
  end 
end


class Towers
  @@default_width = 5
  @@default_height = 3

  attr_reader :number_of_towers, :current_tower

  def initialize(n = 10)
    @number_of_towers = n
    @current_tower = n

    draw
  end 

  def draw
    @current_tower = number_of_towers

    number_of_towers.times do |n|
      current_width = @@default_width * current_tower
      current_height = @@default_height * current_tower

      Tower.new(current_width, current_height).draw

      @current_tower = n 
    end 
  end
end 

Towers.new.draw