class Gradients
  class Color
    attr_accessor :r, :g, :b
    def self.parse(val)
      case val
      when /^#?[0-9a-f]{6}$/i
        new(*val[-6, 6].map{|a|a.scan(/../).map{|b|(b.hex.to_f / 255)}}.flatten)
      end
    end
    
    def initialize(r, g, b)
      @r, @g, @b = r, g, b
    end
    
    def to_s(format = :hex)
      case format
      when :whex
        "##{to_s(:hex)}"
      when :hex
        sprintf("%02x%02x%02x", (@r * 255).round, (@g * 255).round, (@b * 255).round)
      else
        raise 'format not supported'
      end
    end
  end
end