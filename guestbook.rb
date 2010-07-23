require 'rubygems'
require 'sinatra'
require 'couchrest'
require 'haml'

SERVER = CouchRest.new
DB = SERVER.database! "guestbook"

require 'models/entry'

get '/' do
  @entries = Entry.all
  haml :index
end

get '/comment' do
  haml :comment_form
end

post '/post_comment' do
  entry = Entry.new(
    :name => params[:name],
    :comment => params[:comment]
  )
  entry.save
  redirect '/'
end


