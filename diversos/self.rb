#!/usr/bin/env ruby
# Jesher Minelli <jesherdevsk8@gmail.com> - ter 16 ago 2022
class Pen
  attr_accessor :color
  def pen_color
    puts "The color is " + self.color
  end
end

pen = Pen.new
pen.color = "black"
pen.pen_color

pen2 = Pen.new
pen2.color = "red"
pen2.pen_color

class Book
  def self.paper 
    puts 'The paper is ' + self.color
  end
  
  def self.color
    "white"
  end
end

Book.paper
