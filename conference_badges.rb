# Write your code here.
def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(names)
  names.map do |name|
    badge_maker(name)
  end
end

def assign_rooms(attendees)
  rooms = [1, 2, 3, 4, 5, 6, 7]
  room_assignments = []
  rooms.map.with_index do |room, index|
    if attendees[index] == nil then break
    end
    room_assignments << "Hello, #{attendees[index]}! You'll be assigned to room #{room}!"
  end
  room_assignments
end

def printer(attendants)
  batch_badge_creator(attendants).each do |badge|
    puts badge
  end
  assign_rooms(attendants).each do |assignment|
    puts assignment
  end
end