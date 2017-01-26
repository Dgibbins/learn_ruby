 # C° x 1.8 + 32 = F° *** F° - 32 / 1.8 = C°

class Temperature

  def initialize(data)
    @data = data

  end

  def to_fahrenheit
    if @data[:c]
      @data[:c]*1.8 + 32
    else
      @data[:f]
    end
  end

  def to_celsius
    if @data[:f]
      ((@data[:f]-32)/1.8).round
    else
      @data[:c]
    end
  end

  def self.in_celsius(celsius)
     Temperature.new({:c => celsius})

  end

  def self.in_fahrenheit(fahrenheit)
    Temperature.new({:f => fahrenheit})
  end
end


class Celsius < Temperature

  def initialize(temp)
    @data = {:c => temp}
  end

  def to_fahrenheit
    # @data[:c]=@temp
    super
  end

  def to_celsius
    # @data[:c]=@temp
    super
  end
  
end


class Fahrenheit < Temperature

  def initialize(temp)
    @data = {:f => temp}
  end

  def to_fahrenheit
    super
  end

  def to_celsius
    super
  end

end
