require('minitest/autorun')
require('minitest/rg')
require_relative('../room')
require_relative('../guest')

class TestRoom < Minitest::Test

  def setup

    @room_1 = Room.new( 1, 6 )
    @room_2 = Room.new( 2, 2 )
    @room_3 = Room.new( 3, 3 )

    @all_rooms = [@room_1, @room_2, @room_3]

    @steve = Guest.new( "Steve", 30 )
    @dave = Guest.new( "Dave", 29 )
    @barbara = Guest.new( "Barbara", 56 )
    @janice = Guest.new( "Janice", 53 )

  end

  def test_room_is_empty
    empty_room = @room_1.room_guests.count
    assert_equal( 0, empty_room )
  end

  def test_add_customer_to_room
    @room_1.add_customer(@steve)
    room_1_count = @room_1.room_guests.count
    assert_equal( 1, room_1_count )
  end

  def test_playlist_is_empty
    room_3 = @room_3.playlist_check
    assert_equal(0,room_3)
  end

  def test_add_song_to_room
    room = @room_2.add_song(@the_boys)
    assert_equal( 1, room.count )
  end

  def test_remove_customer
    @room_2.add_customer(@dave)
    @room_2.remove_customer(@dave)
    room = @room_2.room_guests
    assert_equal( 0, room.count )
  end

  def test_room_is_full
    @room_2.add_customer(@dave)
    @room_2.add_customer(@steve)
    @room_2.add_customer(@barbara)
    room = 
  end



  # def test_


end


# capacity =
# if array.count > capacity
#   return cannot enter
# else room.push(guest)
