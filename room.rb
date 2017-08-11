class Room

  attr_accessor( :room_name, :capacity, :room_guests )

  def initialize( room_number, capacity )
    @room_number = room_number
    @capacity = capacity
    @room_guests = []
  end

  
end
