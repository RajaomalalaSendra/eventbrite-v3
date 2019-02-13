# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
2.times do |i|
	User.create(email: "email#{i}@email.email", first_name: "User#{i}", last_name: "Last Name#{i}", description: "Description#{i} blablabla", password: "blabla")
	Event.create(start_date: "12/12/2019", duration: 30, title: "Title#{i} title#{i} of event#{i}", description: "description#{i} of the event#{i}", price: 10, location: "location#{i}", user_id: i.to_i + 1)
	Attendance.create(stripe_customer_id: "stripe user id#{i}", user_id: i.to_i + 1, event_id: i.to_i + 1)
end