 # C° x 1.8 + 32 = F° *** F° - 32 / 1.8 = C°

class Temperature

  def initialize(data)
    @data = data
  end

  def to_fahrenheit
    @data[:f]
  end

  def to_celsius

  end

  def in_celsius(temp)
  end

  def in_fahrenheit(temp)
  end
end

y= Temperature.new({:f => 32}).to_celsius
puts "#{y}"
# class Celsius < Temperature
#   def initialize(temp)
#     @temp = temp
#   end
#
#   def to_fahrenheit
#     {super}
#   end
#
#   def to_celsius
#     {super}
#   end
# end
#
#
# class Fahrenheit < Temperature
#
#   def initialize(temp)
#     @temp = temp
#
#   end
#
#   def to_fahrenheit
#     {super}
#   end
#
#   def to_celsius
#     {super}
#   end
#
# end
