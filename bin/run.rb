require_relative '../config/environment'
$prompt = TTY::Prompt.new
def run
    space(50)
    welcome_in
    space(10)
    log_sign_up
    space(10)
    main_menu
    space(10)
end

def space(num=1)
    num.times do 
        puts
    end
end

def welcome_in 
    space(3)
    puts "Welcome to GroupFit!"
    space(3)
end


def log_sign_up
    
    i=0
    
    loop do
        answer = $prompt.select("Please Log In or Sign Up to get started!" , %w(Log-In Sign-Up))
        space(3)

        if answer == "Sign-Up"
    
            name = $prompt.ask('Please enter your name (first and last)?')
            email = $prompt.ask('Please enter your email address?')
            password = $prompt.mask("Password?")
            # member = Member.create(name, email, password)
            i+=1
            
        else
            member = Member.where({
            email: $prompt.ask("Email:"),
            password: $prompt.mask("Enter Password:")
            }).first
            i+=1
        end
        break if i==1   
    end
end

def main_menu
    loop do 
        member_response = $prompt.select("What would you like to do?", %w(View_Sessions Most_Visited Exit))

            if member_response == 'View_Sessions'
                view_sessions
            elsif member_response == 'Most_Visited'
                most_visited
            end
        break if member_response == 'Exit'    
    end
end

def most_visited 
    p Specialist.most_sessions
end

def view_sessions 
    p Specialist.names
end







