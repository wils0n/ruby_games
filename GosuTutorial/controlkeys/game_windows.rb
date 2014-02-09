require 'hasu'

Hasu.load 'quadMove.rb'

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
		@polygon.draw(self)

	end


	def update
		if button_down?(Gosu::KbUp)
			@polygon.up!
		end

		if button_down?(Gosu::KbDown)
			@polygon.down!
		end

		if button_down?(Gosu::KbRight)
			@polygon.right!
		end

		if button_down?(Gosu::KbLeft)
			@polygon.left!
		end
	end
end

GameWindow.run