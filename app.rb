# Require the bundler gem and then call Bundler.require to load in all gems
# listed in Gemfile.
require 'bundler'
Bundler.require

# set up string array to keep sayings in
data = Array.new

# serve pages
get '/' do
	data.to_s
end

get '/newtext/*' do
	if params[:splat].length > 0
		data.push(params[:splat])
	end
	redirect '/'
end