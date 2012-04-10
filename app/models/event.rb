class Event < ActiveRecord::Base
	belongs_to :user
	
	validates_presence_of :user_id,:title
	validate :valid_times

   def valid_times
      if starttime >= endtime
        self.errors.add :starttime
      end
    end
  
end

