class Event < ActiveRecord::Base
  #has_many :users, :through => :events_users
  has_and_belongs_to_many :users

  scope :with_count, lambda {
    eager_load(:users)
  }
end
