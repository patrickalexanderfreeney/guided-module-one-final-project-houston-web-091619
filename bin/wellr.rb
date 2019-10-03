require_relative 'config/environment'
require 'pry'
require "tty-prompt"
prompt = TTY::Prompt.new

puts "Wecome to Well'r"

def sign_up 
    name = prompt.ask('Name:', default: ENV['Name'])
    user_name - prompt.ask('Username', default: ENV['USER'] )
    password = prompt.mask("New password")
    prompt.select("Membership", %w( Antidote Nectar Elixir Essence Flux Dose))
end

def sign_in_sign_up
        # puts "Welcome to Well'r"
    @prompt.ask("Press ENTER to get started")



        prompt = TTY::Prompt.new
        answer = prompt.select( "Let's get started!" , %w(Log In Sign Up))
        # if answer == 'Log In'


        name = @prompt.ask('Please enter your name (first and last):') do |q|
        q.validate(/\D\s/, 'Please include your name.')
        end
        email = @prompt.ask('Please enter your email address:') do |q|
        q.validate(/\A\w+@\w+\.\w+\Z/, 'Invalid email address')
        end 

    end
end