class Room

  attr_accessor( :room_name, :capacity, :room_guests, :room_playlist )

  def initialize( room_number, capacity )
    @room_number = room_number
    @capacity = capacity
    @room_guests = []
    @room_playlist = []
  end

  def add_customer( name )
    @room_guests.push(name)
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

end
