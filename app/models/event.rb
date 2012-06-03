class Event < ActiveRecord::Base
  has_many :commitments
  has_many :users, :through => :commitments

  attr_accessible :commitment_type, :description, :end_time, :location, :max_volunteers, :min_volunteers, :start_time, :title
  
  # need to override the json view to return what full_calendar is expecting.
  # http://arshaw.com/fullcalendar/docs/event_data/Event_Object/
  def as_json(options = {})
    {
      :id => self.id,
      :title => self.title,
      :description => self.description || "",
      :start => start_time.rfc822,
      :end => end_time.rfc822,
      :allDay => false,
      :recurring => false,
      :color => self.event_status,
      :textColor => 'black',
      :url => Rails.application.routes.url_helpers.event_path(id)
    }
  end
  
  def self.format_date(date_time)
    Time.at(date_time.to_i).to_formatted_s(:db)
  end

  def event_status
    unless User.current_user.nil?
      commitment = User.current_user.commitments.find_by_event_id(self.id)
      unless commitment.nil?
        if commitment.status == 'OFFERED'
          '#FFFF84'
        elsif commitment.status == 'ACCEPTED'
          '#BEFEEB'
        elsif commitment.status == 'COMMITTED'
          '#B3FF99'
        end
      else
        commitment_count = Commitment.where(:event_id => self.id, :status => 'COMMITTED').length
        if commitment_count >= self.max_volunteers
          '#FF9797'
        else
          '#F5F0DD'
        end
      end
    else
      'red'
    end
  end
end
