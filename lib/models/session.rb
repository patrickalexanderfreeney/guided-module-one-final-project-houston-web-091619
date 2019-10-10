class Session < ActiveRecord::Base
    belongs_to :member
    belongs_to :specialist

    def self.specialist_ids
        self.all.map do |i|
            i.specialist_id
        end
    end


end