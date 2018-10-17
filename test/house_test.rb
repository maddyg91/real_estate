require './lib/house'
require './lib/room'
require 'minitest/autorun'
require 'minitest/pride'

class HouseTest < Minitest::Test
  def test_house_exists
    house = House.new("$400000", "123 sugar lane")
    assert_instance_of House, house
  end

  def test_house_price
    house = House.new("$400000", "123 sugar lane")
    assert_equal 400000, house.price
  end

  def test_house_address
    house = House.new("$400000", "123 sugar lane")
    assert_equal "123 sugar lane", house.address
  end

  def test_house_has_no_rooms
    house = House.new("$400000", "123 sugar lane")
    assert_equal [], house.rooms
  end

  def test_house_has_room_1
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, 13)
    assert_instance_of Room, room_1
  end

  def test_house_has_room_2
    house = House.new("$400000", "123 sugar lane")
    room_2 = Room.new(:bedroom, 11, 15)
    assert_instance_of Room, room_2
  end

  def test_house_has_room_3
    house = House.new("$400000", "123 sugar lane")
    room_3 = Room.new(:living_room, 25, 15)
    assert_instance_of Room, room_3
  end

  def test_house_has_room_4
    house = House.new("$400000", "123 sugar lane")
    room_4 = Room.new(:basement, 30, 41)
    assert_instance_of Room, room_4
  end

  def test_you_can_add_rooms
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, 13)
    room_2 = Room.new(:bedroom, 11, 15)
    assert_equal [room_1], house.add_room(room_1)
    assert_equal [room_1, room_2], house.add_room(room_2)
  end

  def test_house_has_rooms
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, 13)
    room_2 = Room.new(:bedroom, 11, 15)
    house.add_room(room_1)
    house.add_room(room_2)
    assert_equal [room_1, room_2], house.rooms
  end
  def test_you_can_access_rooms_from_their_category
    house = House.new("$400000", "123 sugar lane")
    room_1 = Room.new(:bedroom, 10, 13)
    room_2 = Room.new(:bedroom, 11, 15)
    room_3 = Room.new(:living_room, 25, 15)
    room_4 = Room.new(:basement, 30, 41)
    house.add_room(room_1)
    house.add_room(room_2)
    house.add_room(room_3)
    house.add_room(room_4)
    assert_equal [room_1, room_2], house.rooms_from_category(:bedroom)
    require "pry"
    binding.pry
  end
end
# pry(main)> house.rooms_from_category(:bedroom)
# #=> [#<Room:0x00007fccd29b5720...>, #<Room:0x00007fccd2985f48...>]
#
# pry(main)> house.rooms_from_category(:basement)
# #=> [#<Room:0x00007fccd297dc30...>]
#
# pry(main)> house.area
# #=> 1900
