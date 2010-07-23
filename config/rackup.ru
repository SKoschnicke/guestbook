# this is a sample file for heroku deployment

set :app_file, File.expand_path(File.dirname(__FILE__) + '/../guestbook.rb')
set :public,   File.expand_path(File.dirname(__FILE__) + '/../public')
set :views,    File.expand_path(File.dirname(__FILE__) + '/../views')
set :env,      :production
disable :run, :reload

require File.dirname(__FILE__) + "/../guestbook"

run Sinatra.application
