class Specialist < ActiveRecord::Base
has_many :subscriptions
has_many :members, through: :subscriptions
end