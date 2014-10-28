# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

2000.times do |i|
  User.create(name: "test-user#{i}", age: i, mail: "test#{i}@example.com")
end

10000.times do |i|
  Event.create(name: "test-event#{i}", target: Date.today - (i/5).day)
end

events = Event.all
users = User.all
200000.times do |i|
  event = events.sample
  event.users << users.sample
  event.save
end
