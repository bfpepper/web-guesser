require "sinatra"
require "sinatra/reloader"

SECRET_NUMBER = rand(100)

get "/" do
  guess = params["guess"]
  message = check_guess(guess)
  erb :index, :locals => {:number => SECRET_NUMBER, :message => message}
end

def check_guess(guess)
  guess = guess.to_i
  if guess < SECRET_NUMBER
    "TOO LOW!!!!!!"
  elsif guess > SECRET_NUMBER
    "TOO HIGH!!!"
  else
    "JUST RIGHT"
  end

end
