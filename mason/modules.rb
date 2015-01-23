module Tools
  def wrench
    puts "crank crank"
  end

  def hammer
    puts "bang bang"
  end
end

class Plumber
  include Tools

  def work
    wrench
  end
end

class Carpenter
  include Tools

  def work
    hammer
  end
end

manny = Carpenter.new
joe = Plumber.new

manny.work
joe.work
