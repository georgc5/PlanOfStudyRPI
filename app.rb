require 'sinatra'
# require 'sinatra/base'
# require 'sinatra/assetpack'

set :port, 8080
# set :static, true
# set :public_folder, "static"
set :views, "views"

# class App < Sinatra::base
# 	register Sinatra::AssetPack
# 	assets do
# 		js :application, [
#     	'/js/colpick.js',
#     	# '/js/app.js'
#     # You can also do this: 'js/*.js'
#   		]

# 	  	css :application, [
# 	    # '/css/jqueryui.css',
# 	    # '/css/reset.css',
# 	    # '/css/foundation.sass',
# 	    '/css/colpick.css'
# 	   	]

# 	    js_compression :jsmin
# 	    css_compression :sass
# 	end

get '/' do
	erb :image
    # return 'Hello world'
end

get '/test' do
	erb :index
end

get '/collapse' do
	erb :collapse
end

get '/drag' do
	erb :drag
end

get '/hello/' do
    greeting = params[:greeting] || "Hi There"
    erb :index, :locals => {'greeting' => greeting}
end

get '/DropZone' do
	erb :dropzones
end

get '/Scroll' do
	erb :scroll
end
