require_relative("guest")
require_relative("song")

class Room

  attr_accessor( :room_name, :capacity, :cost, :room_guests, :room_playlist )

  def initialize( room_number, capacity, cost )
    @room_number = room_number
    @capacity = capacity
    @cost = cost
    @room_guests = []
    @room_playlist = []
  end

  def playlist_check
    @room_playlist.count
  end

  def add_song(song)
    @room_playlist.push(song)
  end

  def remove_customer(guest)
    @room_guests.delete(guest)
  end

  def add_customer(guest)
    @room_guests.push(guest) if (@room_guests.count < @capacity) && (guest.money >= @cost)
  end

  # def fave_song(song)
  #   for song in @room_playlist do
  #     if song.name == @guest.@fave_song
  #     puts "Woo!"
  #   end
  #   end
  #   return
  # end

end
