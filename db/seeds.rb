["911 Hang-Up", "Fire", "Wellness Check"].each do |name|
  NatureCode.create(name: name)
end

["Alice", "Bob", "Charlie"].each do |name|
  User.create(name: name, email: "#{name.downcase}@test.com")
end

[
  { label: "Missed call", nature_code: NatureCode.find_by(name: "911 Hang-Up") },
  { label: "Fire on Broadway", nature_code: NatureCode.find_by(name: "Fire") },
  { label: "Checking-up on my grandma", nature_code: NatureCode.find_by(name: "Wellness Check") }
].each do |params|
  Chatroom.create(label: params[:label], nature_code: params[:nature_code])
end
