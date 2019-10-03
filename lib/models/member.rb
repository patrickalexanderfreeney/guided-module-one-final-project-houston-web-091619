class Member < ActiveRecord::Base
    has_many :subscriptions
    has_many :specialists, through: :subscriptions
end