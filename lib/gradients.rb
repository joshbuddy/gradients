require 'gradients/version'
require 'gradients/color'

class Gradients
  def initialize(*colors)
    if colors.size < 2
      raise "you probably want at least 2 colors"
    end
    @colors = colors.map{|c| Color.parse(c)}
  end

  def at(position)
    raise unless (0.0..1.0).include?(position)
    start_color_index = (position * (@colors.size - 1)).to_i - (position == 1 ? 1 : 0)
    start_color = @colors[start_color_index]
    end_color = @colors[start_color_index + 1]
    mapped_position = (position * (@colors.size - 1)) - start_color_index
    Color.new(
      (end_color.r - start_color.r) * mapped_position + start_color.r,
      (end_color.g - start_color.g) * mapped_position + start_color.g,
      (end_color.b - start_color.b) * mapped_position + start_color.b
    )
  end
end
