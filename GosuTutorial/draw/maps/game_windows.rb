require 'hasu'

Hasu.load 'map.rb'

class GameWindow < Hasu::Window
	WIDTH = 1000
	HEIGHT = 500

	def initialize
		super(WIDTH, HEIGHT, false)

		@sky = Gosu::Image.new(self, "media/bg_shroom.png", true)
	    # The scrolling position is stored as top left corner of the screen.
	    @camera_x = @camera_y = 0
	end

	def reset
		@map = Map.new(self)

	end

	def draw
		@sky.draw(0, 0, 0)
	    translate(-@camera_x, -@camera_y) do
	      @map.draw
	    end

	end


	def update
		
	end
end

GameWindow.run