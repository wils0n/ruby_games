class Polygon

	SIZE = 30
	SPEED = 5
	attr_reader :x, :y

	def initialize
		@x = GameWindow::WIDTH/2
		@y = GameWindow::HEIGHT/2
		@velocity = 0.0  ##
	end

	def x1; @x - SIZE/2; end
	def x2; @x + SIZE/2; end
	def y1; @y - SIZE/2; end
	def y2; @y + SIZE/2; end

	def draw(window)
		color = Gosu::Color::YELLOW
		window.draw_quad(x1, y1, color, x1, y2, color, x2, y2, color, x2, y1, color,)
		
	end

	def up!
		@y -= SPEED
	end

	def down!
		@y += SPEED
	end

	def right!
		@x += SPEED
	end

	def left!
		@x -= SPEED
	end

	def stop!(obstacle)
		if x2>obstacle.x1  && x2 < obstacle.x2  # collision for right
			@x=obstacle.x1 - SIZE/2
		end
		if x1 < obstacle.x2 && x2 > obstacle.x2  # collision for left
			@x=obstacle.x2 + SIZE/2
		end
			
	end

	def intersect?(obstacle)
		x1 < obstacle.x2 && x2 > obstacle.x1 && y1 < obstacle.y2 && y2 > obstacle.y1
	end
end