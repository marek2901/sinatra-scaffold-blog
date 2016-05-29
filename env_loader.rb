$LOAD_PATH << File.expand_path(File.dirname(__FILE__))

#set default env as development can be overriden
ENV['RACK_ENV'] ||= "development"

require "bundler"
Bundler.require

# Local config
require "find"

%w{config/initializers lib}.each do |load_path|
  Find.find(load_path) { |f|
    require f unless f.match(/\/\..+$/) || File.directory?(f)
  }
end
