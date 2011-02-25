require File.expand_path( File.dirname( __FILE__ ) + '/boot' )
require 'sinatra'

MongoMapper.connect(Sinatra::Base.environment)

get '/' do
  "<span>Hello World</span>"
end
