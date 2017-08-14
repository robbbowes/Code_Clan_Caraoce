require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../guest')

class TestGuest < Minitest::Test

  def setup

    @the_boys = Song.new( "The Boys Are Back In Town", "Thin Lizzy", "Rock" )
    @bohemian = Song.new( "Bohemian Rhapsody", "Queen", "Classic Rock")
    @escuela_calor = Song.new( "Escuela De Calor", "Radio Futura", "Rock en Español")
    @all_by_myself = Song.new( "All By Myself", "Céline Dion", "Pop Ballad")

    @steve = Guest.new( "Steve", 30, 20, @the_boys )
    @dave = Guest.new( "Dave", 29, 10, @escuela_calor)
    @barbara = Guest.new( "Barbara", 56, 8, @bohemian )
    @janice = Guest.new( "Janice", 53, 2, @all_by_myself )

  end

  def test_guest_has_name
    name = @dave.name
    assert_equal( "Dave", name )
  end

  def test_guest_has_money
    wallet = @dave.money
    assert_equal( 10, wallet)
  end

end
