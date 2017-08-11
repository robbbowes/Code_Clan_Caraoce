require ('minitest/autorun')
require ('minitest/rg')
require_relative ('../room')

class TestRoom < Minitest::Test

  def setup

    @room_1 = Room.new( 1, 6 )
    @room_2 = Room.new( 2, 2 )
    @room_3 = Room.new( 3, 3 )

    all_rooms = [@room_1, @room_2, @room_3]

  end

  def test_room_is_empty
    empty_room = @room_1.room_guests.count
    assert_equal( 0, empty_room )
  end

  def test_add_customer_to_room
    room = @room_1.push()
  end

end


# capacity =
# if array.count > capacity
#   return cannot enter
# else room.push(guest)
