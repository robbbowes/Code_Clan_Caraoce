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
    # for guest in @room_guests do
    #   @room_playlist.include?(@fave_song)
    #   return "Whoo!"
    # end
    # return
    # puts "Whoo!" if @room_playlist.include?(guest.@fave_song)
  end

  # def fave_song(guest)
  #   for guest in @room_guests do
  #     @room_playlist.include?(@fave_song)
  #     puts "Woo!"
  #   end
  #   return
  # end






  # def wallet_check(guest)
  #   @room_guests.push(name) if guest.money >= @cost
  # end

end
