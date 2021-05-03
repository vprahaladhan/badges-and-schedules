# Write your code here.
def badge_maker(name)
  "Hello, my name is #{name}."
end

def batch_badge_creator(names)
  batch_badges = []
  names.each do |name|
    batch_badges.push(badge_maker(name))
  end
  batch_badges
end

def assign_rooms(attendants)
  rooms = [1, 2, 3, 4, 5, 6, 7]
  assignments = []
  rooms.each_with_index do |room, index|
    if attendants[index] == nil then break
    end
    assignments.push("Hello, #{attendants[index]}! You'll be assigned to room #{room}!")
  end
  assignments
end

def printer(attendants)
  batch_badge_creator(attendants).each do |badge|
    puts badge
  end
  assign_rooms(attendants).each do |assignment|
    puts assignment
  end
end