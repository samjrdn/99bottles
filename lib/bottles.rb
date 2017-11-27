class Bottles

  def song
    verses(99, 0)
  end

  def verses(starting, ending)
    starting.downto(ending)
      .map { |number| verse(number) }
      .join("\n")
  end

  def verse(number)
    "#{quantity(number).capitalize} #{container(number)} of #{beverage} on the wall, "\
    "#{quantity(number)} #{container(number)} of #{beverage}.\n"\
    "#{action(number)}, "\
    "#{quantity(successor(number))} #{container(successor(number))} of #{beverage} on the wall.\n"
  end

  private

  def action(number)
    if number == 0
      "Go to the store and buy some more"
    else
      "Take #{pronoun(number)} down and pass it around"
    end
  end

  def pronoun(number)
    if number == 1
      "it"
    else
      "one"
    end
  end

  def successor(number)
    if number == 0
      99
    else
      number - 1
    end
  end

  def container(number)
    if number == 1
      "bottle"
    else
      "bottles"
    end
  end

  def quantity(number)
    if number == 0
      "no more"
    else
      number.to_s
    end
  end

  def beverage
    "beer"
  end

end
