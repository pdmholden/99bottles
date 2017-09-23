# characteristics:
# - small methods
# - always passing around a number
# - need to look at API to understand private methods (ie, they don't
#   explain themselves)
#
# thoughts:
# - like the breakdown of public API
# - like the simplicity of small methods
#
# questions:
# - wtf is shape? (special_condition) ? blah : halb
# - all use argument of same name, which is the same thing
# - args of the same name, mean the same thing, but not always obvious what
#   the param's relevance is to the method's purpose
# - private below #verse
# - classes? verse/song?
# - base/general case + special case
# - two branches for conditionals in small methods
# - never any code other than conditionals

class Bottles
  def song
    verses(99, 0)
  end

  def verses(starting, ending)
    starting.downto(ending).collect {|i| verse(i)}.join("\n")
  end

  def verse(number)
    "#{quantity(number).capitalize} #{container(number)} of beer on the wall, " +
    "#{quantity(number)} #{container(number)} of beer.\n" +
    "#{action(number)}, " +
    "#{quantity(successor(number))} #{container(successor(number))} of beer on the wall.\n"
  end

  # explains what's special, ie, 0
  # 9 - depends more on the param
  def quantity(number)
    if number == 0
      "no more"
    else
      number.to_s
    end
  end

  # explains what's special, ie, 1
  # 9 - depends more on the param
  def container(number)
    if number == 1
      "bottle"
    else
      "bottles"
    end
  end

  # parameter has nothing to do with meaning of method
  # 9 - depends more on the class? what to do with bottles/beer/containers?
  def action(number)
    if number == 0
      "Go to the store and buy some more"
    else
      "Take #{pronoun(number)} down and pass it around"
    end
  end

  # explains what's special, ie, 1
  # related to container? or is that the abstraction we avoided?
  # 9 - depends more on the param
  def pronoun(number)
    if number == 1
      "it"
    else
      "one"
    end
  end

  # maybe could have a better name
  # explains what's special, ie, 0
  # not clear why go back to 99
  # 9 - depends more on the class? param is important but related logic seems
  #     to be something else, maybe a class
  def successor(number)
    if number == 0
      99
    else
      number - 1
    end
  end
end
