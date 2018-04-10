require "sinatra"
require_relative "cesar"
#require_relative "db/models"

get "/" do
  "Hello World!!!!!"
  erb :index, layout: :main
end

post "/" do
  @result=cesar(params[:text],params[:number].to_i)
  erb :show, layout: :main
end
