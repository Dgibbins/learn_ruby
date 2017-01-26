class Friend
 attr_accessor :greet

  def initialize

  end

  def greet(string="")
    "Hello #{string}!"
  end


end

@friend=Friend.new

puts @friend.greet("Bob")

puts @friend.greet
