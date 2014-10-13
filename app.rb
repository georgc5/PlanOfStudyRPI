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
    return 'Hello world'
end

get '/hello/' do
    greeting = params[:greeting] || "Hi There"
    erb :index, :locals => {'greeting' => greeting}
end
