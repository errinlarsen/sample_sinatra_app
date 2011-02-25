require 'bundler/setup'
require 'mongo_mapper'

MongoMapper.config = {
  :development  => {"uri" => "mongodb://localhost/sample-application"},
  :test         => {"uri" => "mongodb://localhost/sample-application-test"},
  :production   => {"uri" => ENV["MONGOHQ_URL"]}
}

Dir[File.expand_path( File.dirname( __FILE__ ) + '/models/*.rb' )].each { |f| require f }
