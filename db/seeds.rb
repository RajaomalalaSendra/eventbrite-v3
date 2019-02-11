# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
100.times do |i|
	User.create(email: "email#{i}@email.email", first_name: "User#{i}", last_name: "Last Name#{i}", description: "Description#{i} blablabla", encrypted_password: "encrypted_password_number#{i}")
	Event.create(start_date: "12122019", duration: "#{30}", title: "Title#{i} title#{i} of event#{i}", description: "description#{i} of the event#{i}", price: "#{i}", location: "location#{i}")
	Attendance.create(stripe_customer_id: "stripe user id#{i}")
end