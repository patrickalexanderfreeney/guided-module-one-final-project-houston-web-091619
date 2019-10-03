class Specialist < ActiveRecord::Base
has_many :subscriptions
has_many :members, through: :subscriptions

     def self.specialists
        self.all.map do |i|
            i.name
        end
        # Specialist.all.first.name
    end
end