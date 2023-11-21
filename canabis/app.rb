#!/usr/bin/env ruby

# require 'drawille'

# canvas = Drawille::Canvas.new

# (0..1800).step(10).each do |x| 
#   canvas.set(x/10, 10 + Math.sin(x * Math::PI / 180) * 10) 
# end

# puts canvas.frame

require 'drawille'
require 'chunky_png'

include ChunkyPNG

canvas = Drawille::Canvas.new

def draw canvas, img, xoffset=0
  (0..img.dimension.width-1).each do |x|
    (0..img.dimension.height-1).each do |y|
      r = Color.r(img[x,y])
      g = Color.g(img[x,y])
      b = Color.b(img[x,y])
      canvas.set(x+xoffset, y) if (r + b + g) > 100
    end
  end
end

draw canvas, Image.from_file('./1.png')

puts canvas.frame