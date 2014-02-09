class Polygon

	SIZE = 30

	attr_reader :x, :y

	def initialize
		#@x = Pong::WIDTH/2
		#@y = Pong::HEIGHT/2
		@x = 100
		@y = 100

	end

	def x1; @x - SIZE/2; end
	def x2; @x + SIZE/2; end
	def y1; @y - SIZE/2; end
	def y2; @y + SIZE/2; end

	def draw(window, poligon)
		color = Gosu::Color::YELLOW
		color2 = Gosu::Color::RED
		color3 = Gosu::Color::GREEN
		case poligon
		when "quad"
			window.draw_quad(x1, y1, color, x1, y2, color, x2, y2, color, x2, y1, color,)
		
		when "line"
			window.draw_line(x1, y1, color2, x2, y2, color2,)
		when "triangle"
			window.draw_triangle(x1, y1, color3, x1, y2, color3, x2, y2, color3,)
		end
	end

end