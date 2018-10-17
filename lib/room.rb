class Room

 attr_accessor :room_name, :length, :width

 def initialize(room_name, length, width)
   @room_name = room_name
   @length = length
   @width = width
 end

 def category
   @room_name
 end

 def area
   @length * @width
 end
end
