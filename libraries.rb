def rubygem(file)
  gem, file = file.values[0], file.keys[0] if file.respond_to? :keys
  require file
rescue LoadError
  raise "** Please `gem install #{gem || file.split('/')[0]}`"
end

rubygem 'sinatra/base'
rubygem "restclient" => 'rest-client'
rubygem 'json'
#rubygem 'yajl' => 'yajl-ruby'
#require "yajl/json_gem"

require 'models/result'
require 'models/stream'
require 'helpers'