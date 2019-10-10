class Specialist < ActiveRecord::Base
    has_many :sesions
    has_many :members, through: :sessions

    def self.names
        self.all.map do |i|
            i.name
        end
    end

    def self.count_sessions
        Session.specialist_ids.each_with_object(Hash.new(0)) { |word, counts| counts[word] += 1 }
    end

    def self.most_sessions
        self.find(self.count_sessions.max_by { |k,v| v }[0])
    end

    
end

