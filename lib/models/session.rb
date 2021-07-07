class Session < ActiveRecord::Base
belongs_to :member
belongs_to :specialist


def self.sessions
    self.all.map do |i|
        i.name
    end
end

end 