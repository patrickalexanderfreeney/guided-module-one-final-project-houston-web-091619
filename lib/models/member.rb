class Member < ActiveRecord::Base
    has_many :sessions
    has_many :specialists, through: :sessions

    def specialists
        session.all.select do |member|
            member.name == self
        end
    end

    def sessions
        specialist.map do |s|
            s.specialist
        end    
    end
end