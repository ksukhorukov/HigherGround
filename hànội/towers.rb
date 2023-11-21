require_relative './tower.rb'

class Towers
  DEFAULT_WIDTH = 5
  DEFAULT_HEIGHT = 3

  attr_reader :number_of_towers, :current_tower
  attr_accessor :towers_data, :maximum_shift, :current_shift

  def initialize(n = 5)
    @number_of_towers = n
    @current_tower = n
    @towers_data = []
    @current_shift = calculate_maximum_shift

    draw
  end 

  def draw
    @current_tower = 5

    while current_tower > 0 do 
      current_width = DEFAULT_WIDTH * current_tower
      current_height = DEFAULT_HEIGHT * current_tower

      instance = Tower.new(current_width, current_height, current_tower, number_of_towers)
      instance.draw
      towers_data.push instance.data

      @current_tower -= 1 
    end 

    while towers_data.size > 0 do 
      puts formated_string(towers_data.pop)
    end 
  end

  private 

  def calculate_maximum_shift
    @maximum_shift ||= number_of_towers * ::Towers::DEFAULT_WIDTH
  end 

  def formated_string(arr = [])
    # binding.pry
    result = arr.map { |e| (' ' * @current_shift) + e }.join("\n")
    @current_shift -= 1
    result
  end 
end 