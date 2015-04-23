class State < ActiveRecord::Base
  has_many :subscriptions, dependent: :delete_all
  has_many :users, through: :subscriptions

end
