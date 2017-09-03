class Bottles

  def song
    verses(99, 0)
  end

  def verses(starting, ending)
    starting.downto(ending).map {|i| verse(i)}.join("\n")
  end

  def verse(number)
    line_one(number) + line_two(number) + line_three(number) + line_four(number)
  end

  private

  def line_one(number)
    case number
    when 0
      "No more bottles of beer on the wall, "
    when 1
      "1 bottle of beer on the wall, "
    else
      "#{number} bottles of beer on the wall, "
    end
  end

  def line_two(number)
    case number
    when 0
      "no more bottles of beer.\n"
    when 1
      "1 bottle of beer.\n"
    else
      "#{number} bottles of beer.\n"
    end
  end

  def line_three(number)
    case number
    when 0
      "Go to the store and buy some more, "
    when 1
      "Take it down and pass it around, "
    else
      "Take one down and pass it around, "
    end
  end

  def line_four(number)
    case number
    when 0
      "99 bottles of beer on the wall.\n"
    when 1
      "no more bottles of beer on the wall.\n"
    when 2
      "1 bottle of beer on the wall.\n"
    else
      "#{number-1} bottles of beer on the wall.\n"
    end
  end

end
