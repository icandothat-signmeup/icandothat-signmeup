# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
puts 'SETTING UP DEFAULT USER LOGIN'
user = User.create! :name => 'First User', :email => 'user@example.com', :password => 'please', :password_confirmation => 'please', :confirmed_at => Time.now.utc
puts 'New user created: ' << user.name
user2 = User.create! :name => 'Second User', :email => 'user2@example.com', :password => 'please', :password_confirmation => 'please', :confirmed_at => Time.now.utc
puts 'New user created: ' << user2.name
user.add_role :admin

puts 'SETTING UP DEFAULT EVENTS'
event = Event.create! :title => 'Canoe Tour',
  :description => 'Volunteer will assist visitors during a 3 hour canoe tour. Additional time getting the canoes prepped and also stored after will be needed. Please arrive at the VC no later than the time shown for this commitment (scheduled time will be somewhat later).',
  :location => 'Harry Hampton Visitor Center',
  :start_time => '2012-06-09 08:45',
  :end_time   => '2012-06-09 12:00',
  :min_volunteers => 1,
  :max_volunteers => 2,
  :commitment_type => "complete"
puts 'New event created: ' << event.title
event = Event.create! :title => 'Front Desk',
  :description => 'Having a volunteer at the front desk during busy times is always appreciated. It really helps the ranger. The first and last hours of the day are less busy so you may want to adjust your offer accordingly. If you cannot work the entire shift, consider offering to help for the morning or afternoon timeframes (you select).',
  :location => 'Harry Hampton Visitor Center',
  :start_time => '2012-06-03 09:00',
  :end_time   => '2012-06-03 17:00',
  :min_volunteers => 1,
  :max_volunteers => 1,
  :commitment_type => "partial"
puts 'New event created: ' << event.title
event = Event.create! :title => 'Front Desk',
  :description => 'Having a volunteer at the front desk during busy times is always appreciated. It really helps the ranger. The first and last hours of the day are less busy so you may want to adjust your offer accordingly. If you cannot work the entire shift, consider offering to help for the morning or afternoon timeframes (you select).',
  :location => 'Harry Hampton Visitor Center',
  :start_time => '2012-06-04 09:00',
  :end_time   => '2012-06-04 17:00',
  :min_volunteers => 1,
  :max_volunteers => 1,
  :commitment_type => "partial"
puts 'New event created: ' << event.title
event = Event.create! :title => 'Front Desk',
  :description => 'Having a volunteer at the front desk during busy times is always appreciated. It really helps the ranger. The first and last hours of the day are less busy so you may want to adjust your offer accordingly. If you cannot work the entire shift, consider offering to help for the morning or afternoon timeframes (you select).',
  :location => 'Harry Hampton Visitor Center',
  :start_time => '2012-06-05 09:00',
  :end_time   => '2012-06-05 17:00',
  :min_volunteers => 1,
  :max_volunteers => 1,
  :commitment_type => "partial"
puts 'New event created: ' << event.title
event = Event.create! :title => 'Front Desk',
  :description => 'Having a volunteer at the front desk during busy times is always appreciated. It really helps the ranger. The first and last hours of the day are less busy so you may want to adjust your offer accordingly. If you cannot work the entire shift, consider offering to help for the morning or afternoon timeframes (you select).',
  :location => 'Harry Hampton Visitor Center',
  :start_time => '2012-06-06 09:00',
  :end_time   => '2012-06-06 17:00',
  :min_volunteers => 1,
  :max_volunteers => 1,
  :commitment_type => "partial"
puts 'New event created: ' << event.title
event = Event.create! :title => 'Big Tree Hike',
  :description => 'Assist the ranger on this long off-trail hike as we explore the big trees of Congaree. This will be several hours of difficult hiking. Generally the volunteer will hike at the back of the group discussing park ecology with people near the rear and ensuring no one gets separated from the group.',
  :location => 'Harry Hampton Visitor Center',
  :start_time => '2012-06-05 10:00',
  :end_time   => '2012-06-05 14:00',
  :min_volunteers => 1,
  :max_volunteers => 1,
  :commitment_type => "complete"
puts 'New event created: ' << event.title
event = Event.create! :title => 'Boardwalk Rebuilding',
  :description => 'Maintenance will be working all day repairing sections of the boardwalk damaged by tree falls in the recent damaging winds. Volunteers may want to leave earlier than the end time but will need to head out when the crew starts to be sure they all get to the various work sites. Heavy lifting and uncomfortable conditions are likely!',
  :location => 'Maintenance Yard',
  :start_time => '2012-06-05 07:30',
  :end_time   => '2012-06-05 15:00',
  :min_volunteers => 0,
  :max_volunteers => 3,
  :commitment_type => "partial"
puts 'New event created: ' << event.title
