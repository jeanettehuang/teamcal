class User < ActiveRecord::Base
	has_many :events
	has_many :hours
	
	validates_presence_of :name
	
end
