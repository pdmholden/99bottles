class Bottles

  def song
    verses(99, 0)
  end

  def verses(starting, ending)
    starting.downto(ending).map {|i| verse(i)}.join("\n")
  end

  def verse(number)
    sentence_one(number) + sentence_three(number)
  end

  private

  def sentence_one(number)
    case number
    when 0
      "No more bottles of beer on the wall, " +
      "no more bottles of beer.\n"
    when 1
      "1 bottle of beer on the wall, " +
      "1 bottle of beer.\n"
    else
      "#{number} bottles of beer on the wall, " +
      "#{number} bottles of beer.\n"
    end
  end

  def sentence_three(number)
    case number
    when 0
      "Go to the store and buy some more, " +
      "99 bottles of beer on the wall.\n"
    when 1
      "Take it down and pass it around, " +
      "no more bottles of beer on the wall.\n"
    when 2
      "Take one down and pass it around, " +
      "1 bottle of beer on the wall.\n"
    else
      "Take one down and pass it around, " +
      "#{number-1} bottles of beer on the wall.\n"
    end
  end

end
