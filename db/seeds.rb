# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



puts 'SETTING UP USERS'

user = User.create! :name => 'CB Genrich', 
  :email => 'cb@genrich.us', 
  :password => 'password', 
  :password_confirmation => 'password', 
  :confirmed_at => Time.now.utc
user.add_role :coordinator
puts 'New user created: ' << user.name

user = User.create! :name => 'Corinne Fenner', 
  :email => 'corinne@genrich.us', 
  :password => 'password', 
  :password_confirmation => 'password', 
  :confirmed_at => Time.now.utc
user.add_role :coordinator
puts 'New user created: ' << user.name

user = User.create! :name => 'John Galbary', 
  :email => 'john@genrich.us', 
  :password => 'password', 
  :password_confirmation => 'password', 
  :confirmed_at => Time.now.utc
user.add_role :event_leader
puts 'New user created: ' << user.name

user = User.create! :name => 'Lindsey Whatever', 
  :email => 'lindsey@genrich.us', 
  :password => 'password', 
  :password_confirmation => 'password', 
  :confirmed_at => Time.now.utc
user.add_role :event_leader
puts 'New user created: ' << user.name

user = User.create! :name => 'Carol Gist', 
  :email => 'carol@genrich.us', 
  :password => 'password', 
  :password_confirmation => 'password', 
  :confirmed_at => Time.now.utc
user.add_role :volunteer
puts 'New user created: ' << user.name

user = User.create! :name => 'Joe Merritt', 
  :email => 'joe@genrich.us', 
  :password => 'password', 
  :password_confirmation => 'password', 
  :confirmed_at => Time.now.utc
user.add_role :volunteer
puts 'New user created: ' << user.name



puts 'SETTING UP DEFAULT EVENTS'


puts 'Adding events.'

descr = 'Volunteer will assist visitors during a 3 hour canoe tour. Additional time getting the canoes prepped and also stored after will be needed. Please arrive at the VC no later than the time shown for this commitment (scheduled time will be somewhat later).'
event = Event.create! :title => 'Canoe Tour', :description => descr, :location => 'Harry Hampton Visitor Center', :start_time => '2012-06-09 08:45', :end_time   => '2012-06-09 12:00', :min_volunteers => 1, :max_volunteers => 2, :commitment_type => "complete"
event = Event.create! :title => 'Canoe Tour', :description => descr, :location => 'Harry Hampton Visitor Center', :start_time => '2012-06-09 12:45', :end_time   => '2012-06-09 16:30', :min_volunteers => 1, :max_volunteers => 2, :commitment_type => "complete"
event = Event.create! :title => 'Canoe Tour', :description => descr, :location => 'Harry Hampton Visitor Center', :start_time => '2012-06-16 08:45', :end_time   => '2012-06-16 12:00', :min_volunteers => 1, :max_volunteers => 2, :commitment_type => "complete"
event = Event.create! :title => 'Canoe Tour', :description => descr, :location => 'Harry Hampton Visitor Center', :start_time => '2012-06-17 12:45', :end_time   => '2012-06-17 16:30', :min_volunteers => 1, :max_volunteers => 2, :commitment_type => "complete"
event = Event.create! :title => 'Canoe Tour', :description => descr, :location => 'Harry Hampton Visitor Center', :start_time => '2012-06-19 09:45', :end_time   => '2012-06-19 13:00', :min_volunteers => 1, :max_volunteers => 2, :commitment_type => "complete"
puts 'Canoe tour events created.' << event.title



puts 'Adding front desk'
descr = 'Having a volunteer at the front desk during busy times is always appreciated. It really helps the ranger. The first and last hours of the day are less busy so you may want to adjust your offer accordingly. If you cannot work the entire shift, consider offering to help for the morning or afternoon timeframes (you select).'

event = Event.create! :title => 'Front Desk', :description => descr, :location => 'Harry Hampton Visitor Center', :start_time => '2012-06-03 09:00', :end_time   => '2012-06-03 17:00', :min_volunteers => 1, :max_volunteers => 1, :commitment_type => "partial"
event = Event.create! :title => 'Front Desk', :description => descr, :location => 'Harry Hampton Visitor Center', :start_time => '2012-06-04 09:00', :end_time   => '2012-06-04 17:00', :min_volunteers => 1, :max_volunteers => 1, :commitment_type => "partial"
event = Event.create! :title => 'Front Desk', :description => descr, :location => 'Harry Hampton Visitor Center', :start_time => '2012-06-05 09:00', :end_time   => '2012-06-05 17:00', :min_volunteers => 1, :max_volunteers => 1, :commitment_type => "partial"
event = Event.create! :title => 'Front Desk', :description => descr, :location => 'Harry Hampton Visitor Center', :start_time => '2012-06-06 09:00', :end_time   => '2012-06-06 17:00', :min_volunteers => 1, :max_volunteers => 1, :commitment_type => "partial"
event = Event.create! :title => 'Front Desk', :description => descr, :location => 'Harry Hampton Visitor Center', :start_time => '2012-06-07 09:00', :end_time   => '2012-06-07 17:00', :min_volunteers => 1, :max_volunteers => 1, :commitment_type => "partial"
event = Event.create! :title => 'Front Desk', :description => descr, :location => 'Harry Hampton Visitor Center', :start_time => '2012-06-08 09:00', :end_time   => '2012-06-08 19:00', :min_volunteers => 1, :max_volunteers => 1, :commitment_type => "partial"

event = Event.create! :title => 'Front Desk', :description => descr, :location => 'Harry Hampton Visitor Center', :start_time => '2012-06-09 09:00', :end_time   => '2012-06-09 19:00', :min_volunteers => 1, :max_volunteers => 1, :commitment_type => "partial"
event = Event.create! :title => 'Front Desk', :description => descr, :location => 'Harry Hampton Visitor Center', :start_time => '2012-06-10 09:00', :end_time   => '2012-06-10 17:00', :min_volunteers => 1, :max_volunteers => 1, :commitment_type => "partial"
event = Event.create! :title => 'Front Desk', :description => descr, :location => 'Harry Hampton Visitor Center', :start_time => '2012-06-11 09:00', :end_time   => '2012-06-11 17:00', :min_volunteers => 1, :max_volunteers => 1, :commitment_type => "partial"
event = Event.create! :title => 'Front Desk', :description => descr, :location => 'Harry Hampton Visitor Center', :start_time => '2012-06-12 09:00', :end_time   => '2012-06-12 17:00', :min_volunteers => 1, :max_volunteers => 1, :commitment_type => "partial"
event = Event.create! :title => 'Front Desk', :description => descr, :location => 'Harry Hampton Visitor Center', :start_time => '2012-06-13 09:00', :end_time   => '2012-06-13 17:00', :min_volunteers => 1, :max_volunteers => 1, :commitment_type => "partial"
event = Event.create! :title => 'Front Desk', :description => descr, :location => 'Harry Hampton Visitor Center', :start_time => '2012-06-14 09:00', :end_time   => '2012-06-14 17:00', :min_volunteers => 1, :max_volunteers => 1, :commitment_type => "partial"
event = Event.create! :title => 'Front Desk', :description => descr, :location => 'Harry Hampton Visitor Center', :start_time => '2012-06-15 09:00', :end_time   => '2012-06-15 19:00', :min_volunteers => 1, :max_volunteers => 1, :commitment_type => "partial"

event = Event.create! :title => 'Front Desk', :description => descr, :location => 'Harry Hampton Visitor Center', :start_time => '2012-06-16 09:00', :end_time   => '2012-06-16 19:00', :min_volunteers => 1, :max_volunteers => 1, :commitment_type => "partial"
event = Event.create! :title => 'Front Desk', :description => descr, :location => 'Harry Hampton Visitor Center', :start_time => '2012-06-17 09:00', :end_time   => '2012-06-17 17:00', :min_volunteers => 1, :max_volunteers => 1, :commitment_type => "partial"
event = Event.create! :title => 'Front Desk', :description => descr, :location => 'Harry Hampton Visitor Center', :start_time => '2012-06-18 09:00', :end_time   => '2012-06-18 17:00', :min_volunteers => 1, :max_volunteers => 1, :commitment_type => "partial"
event = Event.create! :title => 'Front Desk', :description => descr, :location => 'Harry Hampton Visitor Center', :start_time => '2012-06-19 09:00', :end_time   => '2012-06-19 17:00', :min_volunteers => 1, :max_volunteers => 1, :commitment_type => "partial"
event = Event.create! :title => 'Front Desk', :description => descr, :location => 'Harry Hampton Visitor Center', :start_time => '2012-06-20 09:00', :end_time   => '2012-06-20 17:00', :min_volunteers => 1, :max_volunteers => 1, :commitment_type => "partial"
event = Event.create! :title => 'Front Desk', :description => descr, :location => 'Harry Hampton Visitor Center', :start_time => '2012-06-21 09:00', :end_time   => '2012-06-21 17:00', :min_volunteers => 1, :max_volunteers => 1, :commitment_type => "partial"
event = Event.create! :title => 'Front Desk', :description => descr, :location => 'Harry Hampton Visitor Center', :start_time => '2012-06-22 09:00', :end_time   => '2012-06-22 19:00', :min_volunteers => 1, :max_volunteers => 1, :commitment_type => "partial"

event = Event.create! :title => 'Front Desk', :description => descr, :location => 'Harry Hampton Visitor Center', :start_time => '2012-06-23 09:00', :end_time   => '2012-06-23 19:00', :min_volunteers => 1, :max_volunteers => 1, :commitment_type => "partial"
event = Event.create! :title => 'Front Desk', :description => descr, :location => 'Harry Hampton Visitor Center', :start_time => '2012-06-24 09:00', :end_time   => '2012-06-24 17:00', :min_volunteers => 1, :max_volunteers => 1, :commitment_type => "partial"
event = Event.create! :title => 'Front Desk', :description => descr, :location => 'Harry Hampton Visitor Center', :start_time => '2012-06-25 09:00', :end_time   => '2012-06-25 17:00', :min_volunteers => 1, :max_volunteers => 1, :commitment_type => "partial"
event = Event.create! :title => 'Front Desk', :description => descr, :location => 'Harry Hampton Visitor Center', :start_time => '2012-06-26 09:00', :end_time   => '2012-06-26 17:00', :min_volunteers => 1, :max_volunteers => 1, :commitment_type => "partial"
event = Event.create! :title => 'Front Desk', :description => descr, :location => 'Harry Hampton Visitor Center', :start_time => '2012-06-27 09:00', :end_time   => '2012-06-27 17:00', :min_volunteers => 1, :max_volunteers => 1, :commitment_type => "partial"
event = Event.create! :title => 'Front Desk', :description => descr, :location => 'Harry Hampton Visitor Center', :start_time => '2012-06-28 09:00', :end_time   => '2012-06-28 17:00', :min_volunteers => 1, :max_volunteers => 1, :commitment_type => "partial"
event = Event.create! :title => 'Front Desk', :description => descr, :location => 'Harry Hampton Visitor Center', :start_time => '2012-06-29 09:00', :end_time   => '2012-06-29 19:00', :min_volunteers => 1, :max_volunteers => 1, :commitment_type => "partial"

event = Event.create! :title => 'Front Desk', :description => descr, :location => 'Harry Hampton Visitor Center', :start_time => '2012-06-30 09:00', :end_time   => '2012-06-30 19:00', :min_volunteers => 1, :max_volunteers => 1, :commitment_type => "partial"
event = Event.create! :title => 'Front Desk', :description => descr, :location => 'Harry Hampton Visitor Center', :start_time => '2012-07-01 09:00', :end_time   => '2012-07-01 17:00', :min_volunteers => 1, :max_volunteers => 1, :commitment_type => "partial"
event = Event.create! :title => 'Front Desk', :description => descr, :location => 'Harry Hampton Visitor Center', :start_time => '2012-07-02 09:00', :end_time   => '2012-07-02 17:00', :min_volunteers => 1, :max_volunteers => 1, :commitment_type => "partial"
event = Event.create! :title => 'Front Desk', :description => descr, :location => 'Harry Hampton Visitor Center', :start_time => '2012-07-03 09:00', :end_time   => '2012-07-03 17:00', :min_volunteers => 1, :max_volunteers => 1, :commitment_type => "partial"
event = Event.create! :title => 'Front Desk', :description => descr, :location => 'Harry Hampton Visitor Center', :start_time => '2012-07-04 09:00', :end_time   => '2012-07-04 17:00', :min_volunteers => 1, :max_volunteers => 1, :commitment_type => "partial"
event = Event.create! :title => 'Front Desk', :description => descr, :location => 'Harry Hampton Visitor Center', :start_time => '2012-07-05 09:00', :end_time   => '2012-07-05 17:00', :min_volunteers => 1, :max_volunteers => 1, :commitment_type => "partial"
event = Event.create! :title => 'Front Desk', :description => descr, :location => 'Harry Hampton Visitor Center', :start_time => '2012-07-06 09:00', :end_time   => '2012-07-06 19:00', :min_volunteers => 1, :max_volunteers => 1, :commitment_type => "partial"
puts 'Front desk events created.' << event.title

descr = 'Assist the ranger on this long off-trail hike as we explore the big trees of Congaree. This will be several hours of difficult hiking. Generally the volunteer will hike at the back of the group discussing park ecology with people near the rear and ensuring no one gets separated from the group.'
event = Event.create! :title => 'Big Tree Hike', :description => descr, :location => 'Harry Hampton Visitor Center', :start_time => '2012-06-05 10:00', :end_time   => '2012-06-05 14:00', :min_volunteers => 1, :max_volunteers => 1, :commitment_type => "complete"
event = Event.create! :title => 'Big Tree Hike', :description => descr, :location => 'Harry Hampton Visitor Center', :start_time => '2012-06-23 10:00', :end_time   => '2012-06-23 14:00', :min_volunteers => 1, :max_volunteers => 1, :commitment_type => "complete"
puts 'Hike events created.' << event.title

descr = 'Maintenance will be working all day repairing sections of the boardwalk damaged by tree falls in the recent damaging winds. Volunteers may want to leave earlier than the end time but will need to head out when the crew starts to be sure they all get to the various work sites. Heavy lifting and uncomfortable conditions are likely!'
event = Event.create! :title => 'Boardwalk Rebuilding', :description => descr, :location => 'Maintenance Yard', :start_time => '2012-06-05 07:30', :end_time   => '2012-06-05 15:00', :min_volunteers => 0, :max_volunteers => 3, :commitment_type => "partial"
event = Event.create! :title => 'Boardwalk Repair', :description => descr, :location => 'Maintenance Yard', :start_time => '2012-06-08 07:30', :end_time   => '2012-06-08 15:00', :min_volunteers => 0, :max_volunteers => 3, :commitment_type => "partial"
puts 'Maintenance events created.' << event.title

descr = 'Join Sean for a day of trail clearing. Sean will be operating the chain saw as needed, and some volunteers would be helpful in clearing brush. Loppers and hand saw operation will be required. Please wear long pants and sturdy boots.'
event = Event.create! :title => 'Trail Clearing', :description => descr, :location => 'Maintenance Yard', :start_time => '2012-06-06 07:30', :end_time   => '2012-06-06 15:00', :min_volunteers => 0, :max_volunteers => 3, :commitment_type => "partial"
event = Event.create! :title => 'Trail Clearing', :description => descr, :location => 'Maintenance Yard', :start_time => '2012-06-09 07:30', :end_time   => '2012-06-09 15:00', :min_volunteers => 0, :max_volunteers => 3, :commitment_type => "partial"
puts 'Maintenance events created.' << event.title




