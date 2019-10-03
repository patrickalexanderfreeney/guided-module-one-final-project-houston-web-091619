require_relative '../config/environment'
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
 
while 
    member_response = $prompt.select("What would you like to do?", %w(Schedule Classes))
    
   
    
    if member_response == "Schedule"
        Specialist.specialists
    end

    if member_response = "Massage Master"
        Session.create(member)


    if member_response == exit
        break
    end
end


# space(4)
# puts "Wellr: For your wellness."
# log_in_sign_up
# main_menu




