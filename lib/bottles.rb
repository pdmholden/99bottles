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
    str = prefix_string(number)
    if (number == 0)
      begin_sentence = str.capitalize
    else
      begin_sentence = str
    end
    begin_sentence + " of beer on the wall, " +
      str + " of beer.\n"
  end

  def sentence_three(number)
    case number
    when 0
      "Go to the store and buy some more, " +
      "99 bottles of beer on the wall.\n"
    when 1
      "Take it down and pass it around, " +
      prefix_string(number-1) + " of beer on the wall.\n"
    else
      "Take one down and pass it around, " +
      prefix_string(number-1) + " of beer on the wall.\n"
    end
  end

  def prefix_string(number)
    case number
    when 0
      "no more bottles"
    when 1
      "1 bottle"
    else
      "#{number} bottles"
    end
  end

end
