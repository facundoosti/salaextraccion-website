class App < Sinatra::Base

  # Directory Structure
  configure do
    set :root, Dir.pwd
    set :erb,   :format => :html5
    set :public_folder, File.dirname(__FILE__) + '/public'
  end
    use Rack::Static, urls: ['/css', '/js', '/fonts', '/images'], root: 'public'
  
  configure do
    set :views, 'app/views/'
  end

	get '/' do
		erb :index
	end
end