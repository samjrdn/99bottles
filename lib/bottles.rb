class Bottles
  def verse(c)
    "#{c==0?'No more':c} bottle#{c==1?'':'s'} of beer on the wall, #{c==0?'no more':c} bottle#{c==1?'':'s'} of beer.\n"\
    "#{c==0?"Go to the store and buy some more, 99 bottles of beer on the wall.":"Take #{c>1?'one':'it'} down and pass it around, #{c>1?c-1:'no more'} bottle#{c==2?'':'s'} of beer on the wall."}\n"
  end

  def verses(c1, c2)
    c1.downto(c2).map(&method(:verse)).join("\n")
  end

  def song
    verses(99, 0)
  end
end
