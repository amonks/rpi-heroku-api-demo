# Require the bundler gem and then call Bundler.require to load in all gems
# listed in Gemfile.
require 'bundler'
Bundler.require

# set up string array to keep sayings in
data = Array.new

# serve pages
get '/' do
	@text = data
	@text.to_s
end

get '/newtext/*' do
	if params[:splat].join("").to_s.length > 0
		data.unshift(params[:splat])
	end
	redirect '/'
end

get '/threejs' do
	@text = data
	haml :threejs
end