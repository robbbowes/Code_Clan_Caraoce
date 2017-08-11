require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../guest')

class TestGuest < Minitest::Test

  def setup
    @steve = Guest.new( "Steve", 30 )
    @dave = Guest.new( "Dave", 29 )
    @barbara = Guest.new( "Barbara", 56 )
    @janice = Guest.new( "Janice", 53 )

    @boys = []
    @gals = []
  end

  def test_guest_has_name
    name = @dave.name
    assert_equal( "Dave", name )
  end

  def test_group_guests_by_gender
    men = @group
  end


end
