class Event < ActiveRecord::Base
  has_many :commitments
  has_many :users, :through => :commitments

  attr_accessible :commitment_type, :description, :end_time, :location, :max_volunteers, :min_volunteers, :start_time, :title
end
