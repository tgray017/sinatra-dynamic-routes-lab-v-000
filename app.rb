require_relative 'config/environment'

class App < Sinatra::Base

  get '/reversename/:name' do
    "#{params[:name].reverse}"
  end
  
  get '/square/:number' do
    "#{(params[:number].to_i**2).to_s}"
  end
  
  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    raise @number.inspect
    @number.times do
      "#{@phrase.to_s}"
    end
  end

end