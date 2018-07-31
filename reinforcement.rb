hash_one = { data: { rooms:
    [ { id: 1, room_number: "201", capacity: 50}, { id: 2, room_number: "301", capacity: 200 }, { id: 3, room_number: "1B", capacity: 100}
    ],
    events: [
      { id: 1, room_id: 2, start_time: 18, end_time: 20, attendees: 75 },
      { id: 2, room_id: 1, start_time: 10, end_time: 18, attendees: 25 },
      { id: 3, room_id: 2, start_time: 10, end_time: 18, attendees: 20 },
      { id: 4, room_id: 3, start_time: 18, end_time: 21, attendees: 56 },
    ]
  }
}

#1.
capacity_room201 = hash_one[:data][:rooms][0][:capacity]
puts capacity_room201

id_201 = nil
hash_one[:data][:rooms].each do |room|
  if room[:room_number] == "201"
    id_201 = room[:id]
  end
end

hash_one[:data][:events].each do |event|
  if event[:room_id] == id_201 && event[:attendees] <= capacity_room201
    puts "OK for event ##{event[:id]}"
  end
end
