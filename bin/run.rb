require_relative '../config/environment'

# require '../model/specialist'

$prompt = TTY::Prompt.new

def space(num)
    num.times do 
        puts "
     "
    end
end

member = nil

while member == nil
    puts " Welcome to GroupFit "
    space(3) 

    answer = $prompt.select( "Let's get started!" , %w(Log-In Sign-Up))
    
    if answer == "Sign-Up"
    name = $prompt.ask('Please enter your name (first and last)?') do |q|
        q.validate(/\D\s/, 'Please include your name.')
    end
        
    email = $prompt.ask('Please enter your email address?') do |q|
        q.validate(/\A\w+@\w+\.\w+\Z/, 'Invalid email address')
    end

    password = $prompt.mask("Password")

    member = Member.create({
        name: name, 
        email: email,
        password: password})
    end

    if answer == "Log-In"
        member = Member.where({
            email: $prompt.ask("Email:"),
            password: $prompt.mask("Enter Password:")
        }).first
    end   
end  
 
# while 
#     member_response = $prompt.select("What would you like to do?", %w(Schedule Classes))
    
   
    
#     if member_response == "Schedule"
#         Specialist.specialists
#     end

#     if member_response == "Massage Master"
#         Session.create(member)
#     end

# end

while
   member_response = $prompt.select("What would you like to do?", %w(Schedule_Session View_Sessions Purchase_Points Refer_a_friend))
       case member_response
       when "Schedule_Session"
        puts Specialist.specialists
       when View_Sessions
         puts "The tank is almost empty. Quickly, find a gas station!"
       when Purchase_Points
         puts 'You should be ok for now.'
       when Refer_a_friend
         puts "The tank is almost full."
       else
         break if member_response == 'Quit'
       end
   # if member_response == exit
   #     break
   # end
end


