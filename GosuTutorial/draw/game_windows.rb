require 'hasu'

Hasu.load 'drawPolygons.rb'

class GameWindow < Hasu::Window
	WIDTH = 768
	HEIGHT = 576

	def initialize
		super(WIDTH, HEIGHT, false)
	end

	def reset
		@polygon = Polygon.new

	end

	def draw
		@polygon.draw(self, "line")

	end


	def update
		
	end
end

GameWindow.run