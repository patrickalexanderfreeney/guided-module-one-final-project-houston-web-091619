require_relative '../config/environment'
$prompt = TTY::Prompt.new

puts "Wellr: For your wellness."

def log_in_sign_up
    answer = $prompt.select( "Welcome! Let's get started!" , %w(Log-In Sign-Up))


    if answer == "Sign-Up"
        name = $prompt.ask('Please enter your name (first and last)?') do |q|
            q.validate(/\D\s/, 'Please include your name.')
        end
        
        email = $prompt.ask('Please enter your email address?') do |q|
            q.validate(/\A\w+@\w+\.\w+\Z/, 'Invalid email address')
        end

        password = password = $prompt.mask("Password")

    else
        email = $prompt.ask('Email address:') do |q|
            q.validate(/\A\w+@\w+\.\w+\Z/, 'Invalid email address')
        end

        password = $prompt.mask("Password")
    end   
end  

def main_menu
    
    answer = $prompt.ask( "What would you like to do?")
    
end

log_in_sign_up
main_menu




