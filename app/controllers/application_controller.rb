require_relative '../../config/environment'

class App < Sinatra::Base
  set :views, Proc.new { File.join(root, "../views/") }

  get '/' do
    @bugs = Bug.all.order('price DESC')
    erb :index
  end
end