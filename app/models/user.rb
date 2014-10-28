class User < ActiveRecord::Base
  #has_many :events, :through => :events_users
  has_and_belongs_to_many :events
end
