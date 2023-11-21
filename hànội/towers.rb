require_relative './tower.rb'

class Towers
  @@default_width = 5
  @@default_height = 3

  attr_reader :number_of_towers, :current_tower
  attr_accessor :towers_data

  def initialize(n = 5)
    @number_of_towers = n
    @current_tower = n
    @towers_data = []

    draw
  end 

  def draw
    @current_tower = 5

    while current_tower > 0 do 
      current_width = @@default_width * current_tower
      current_height = @@default_height * current_tower

      instance = Tower.new(current_width, current_height, current_tower, number_of_towers)
      instance.draw
      towers_data.push instance.data

      @current_tower -= 1 
    end 

    while towers_data.size > 0 do 
      puts towers_data.pop
      # raw = towers_data.pop 
      # calculate_shifting(raw)
      # puts shifted_string(raw)
    end 
  end

  private 

  def calculate_shifting(str = '')
  end 

  def shifted_string(str = '')
  end 
end 