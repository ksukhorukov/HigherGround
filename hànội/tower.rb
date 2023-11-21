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
    form_tower
    # display_tower
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

  def form_tower
    tower_data.push border
    courpus_size.times { tower_data.push corpus }
    tower_data.push border
  end

  def display_tower
    @tower_data.each { |layer| puts layer }
  end

  def data
    @tower_data
  end 
end