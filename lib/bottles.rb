class Bottles
  def song
    verses(99, 0)
  end

  def verses(starting, ending)
    starting.downto(ending).collect {|i| verse(i)}.join("\n")
  end

  def verse(number)
    "#{initial_number(number, true)} #{container(number)} of beer on the wall, " +
    "#{initial_number(number, false)} #{container(number)} of beer.\n" +
    take_appropriate_action(number) +
    "#{number_left(number)} #{container(number-1)} of beer on the wall.\n"
  end

  def container(number)
    if (number == 1)
      "bottle"
    else
      "bottles"
    end
  end

  def single(number)
    if (number == 1)
      "it"
    else
      "one"
    end
  end

  def initial_number(number, grammar = true)
    if (number == 0)
      if (grammar)
        "No more"
      else
        "no more"
      end
    else
      "#{number}"
    end
  end

  def number_left(starting_number)
    if (starting_number == 0)
      99
    elsif (starting_number == 1)
      "no more"
    else
      starting_number - 1
    end
  end

  def take_appropriate_action(number)
    if (number == 0)
      "Go to the store and buy some more, "
    else
      "Take #{single(number)} down and pass it around, "
    end
  end
end
