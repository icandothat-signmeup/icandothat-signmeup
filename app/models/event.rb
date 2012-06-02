class Event < ActiveRecord::Base
  attr_accessible :commitment_type, :description, :end_time, :location, :max_volunteers, :min_volunteers, :start_time, :title
end
