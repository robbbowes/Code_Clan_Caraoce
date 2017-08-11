require_relative('song')

class Guest

  attr_accessor( :name, :age, :money, :fave_song)

  def initialize( name, age, money, fave_song )
    @name = name
    @age = age
    @money = money
    @fave_song = fave_song
  end

end
