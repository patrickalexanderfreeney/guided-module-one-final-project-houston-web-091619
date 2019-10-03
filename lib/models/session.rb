class Session < ActiveRecord::Base
belongs_to :member
belongs_to :specialist
end