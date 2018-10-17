require "pry"
class House
  attr_accessor :price , :address, :rooms

  def initialize(price, address)
    @price= price.slice(1..10).to_i
    @address= address
    @rooms= []
  end

  def add_room(room)
    @rooms << room
    @rooms
  end

  def rooms_from_category(category)
      category = :bedroom
    rooms_by_category = @rooms.sort_by do |room|
      binding.pry
     room.room_name
    end

  end
end
