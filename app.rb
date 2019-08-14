require_relative 'config/environment'

class App < Sinatra::Base

  # This is a sample static route.
  get '/hello' do
    "Hello World!"
  end

  # This is a sample dynamic route.
  get "/hello/:name" do
    @user_name = params[:name]
    "Hello #{@user_name}!"
  end

  # Code your final two routes here:
  get('/goodbye/:name'){ "Goodbye, #{params[:name]}."}

  get('/multiply/:num1/:num2'){ multiply(params[:num1], params[:num2]) }

  def multiply(a,b)
    (a.to_f * b.to_f).to_s
  end

end