class Obstacle

	WIDTH = 50
	HEIGHT = 150

	attr_accessor :y

	def initialize
		@y = GameWindow::HEIGHT/2
	end

	def x1
		GameWindow::WIDTH - GameWindow::WIDTH/3
	end

	def x2
		x1 + WIDTH
	end

	def y1
		@y-HEIGHT/2
	end

	def y2
		@y+HEIGHT/2
	end

	def draw(window)
		color = Gosu::Color::WHITE

		window.draw_quad(
			x1, y1, color,
			x1, y2, color,
			x2, y2, color,
			x2, y1, color,
		)
	end
end