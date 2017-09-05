class Bottles
  def song
    verses(99, 0)
  end

  def verses(starting, ending)
    starting.downto(ending).collect {|i| verse(i)}.join("\n")
  end

  def verse(number)
    case number
    when 0
      "No more #{container(number)} of beer on the wall, " +
      "no more #{container(number)} of beer.\n" +
      take_appropriate_action(number) +
      "99 #{container(99)} of beer on the wall.\n"
    else
      "#{number} #{container(number)} of beer on the wall, " +
      "#{number} #{container(number)} of beer.\n" +
      take_appropriate_action(number) +
      "#{number_left(number)} #{container(number-1)} of beer on the wall.\n"
    end
  end

  def container(number)
    if number == 1
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

  def number_left(starting_number)
    if (starting_number == 1)
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
