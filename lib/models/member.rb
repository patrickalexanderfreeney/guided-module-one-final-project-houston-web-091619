class Member < ActiveRecord::Base
    has_many :subscriptions
    has_many :specialists, through: :subscriptions

    def sign_up 
        name = prompt.ask('Name:', default: ENV['Name'])
        user_name - prompt.ask('Username', default: ENV['USER'] )
        password = prompt.mask("New password")
        prompt.select("Membership", %w( Antidote Nectar Elixir Essence Flux Dose))
    end

end