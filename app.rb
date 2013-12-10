# Require the bundler gem and then call Bundler.require to load in all gems
# listed in Gemfile.
require 'bundler'
Bundler.require

# set up string array to keep sayings in
data = Array.new
data.push("Initial Data!")

# serve pages
get '/' do
	@text = data.last.to_s
	@text
end

get '/newtext/*' do
	if params[:splat].length > 0
		data.push(params[:splat])
	end
	redirect '/'
end

get '/threejs' do
	@text = data
	haml :threejs
end