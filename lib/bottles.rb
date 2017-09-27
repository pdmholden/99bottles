class Bottles
  def song
    verses(99, 0)
  end

  def verses(starting, ending)
    starting.downto(ending).collect {|i| verse(i)}.join("\n")
  end

  def verse(number)
    bottle_number      = BottleFactory.newBottleNumber(number)
    next_bottle_number = BottleFactory.newBottleNumber(bottle_number.successor)

    "#{bottle_number} of beer on the wall, ".capitalize +
    "#{bottle_number} of beer.\n" +
    "#{bottle_number.action}, " +
    "#{next_bottle_number} of beer on the wall.\n"
  end
end

class BottleFactory
  def self.newBottleNumber(number)
    if (number == 0)
      BottleNumber0.new
    elsif (number == 1)
      BottleNumber1.new
    else
      BottleNumber.new(number)
    end
  end
end

class BottleNumber
  attr_reader :number
  def initialize(number)
    @number = number
  end

  def to_s
    "#{quantity} #{container}"
  end

  def container
    "bottles"
  end

  def quantity
    number.to_s
  end

  def action
    "Take #{pronoun} down and pass it around"
  end

  def pronoun
    "one"
  end

  def successor
    number - 1
  end
end

class BottleNumber0 < BottleNumber
  def initialize
    super(0)
  end

  def quantity
    "no more"
  end

  def action
    "Go to the store and buy some more"
  end

  def successor
    99
  end
end

class BottleNumber1 < BottleNumber
  def initialize
    super(1)
  end

  def container
    "bottle"
  end

  def pronoun
    "it"
  end
end
