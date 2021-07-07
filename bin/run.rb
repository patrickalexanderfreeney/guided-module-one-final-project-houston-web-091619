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
    space(2) 

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
            password: $prompt.mask("Enter Password:"),
        }).first   
    end   
end  
 
# loop do
#     member_response = $prompt.select(“What would you like to do?“, %w(Schedule_Session View_Sessions Highest_Rated Exit))

#     if member_response == “Schedule_Session”

#         specialist_id = $prompt.select(“What would you like to do?“

#         Session.create({
#             member_id: member_id,
#             specialist_id: specialist,
#             time: time
#         })
#     end
#     if member_response ==“View_Sessions”
#         scheduled_sessions 
#     end
#     if member_response ==“Highest_Rated”
#     end
#     # break if
#  end


loop do
    #  member_response = $prompt.select(“What would you like to do?“, %w(Schedule_Session View_Sessions Highest_Rated Exit))
       if member_response == “Schedule_Session”
           puts "scheduled_session"
       elsif member_response == “View_Sessions”
           puts "view_sessions"
       elsif member_response == “Highest_Rated”
           puts "highest_rated"
       break if member_response == “Exit”
    end
end




