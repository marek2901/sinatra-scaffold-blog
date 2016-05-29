require_relative "spec_helper"
require_relative "../hello_blog.rb"

def app
  HelloBlog
end

describe HelloBlog do
  it "responds with a welcome message" do
    get '/'

    last_response.body.must_include 'Welcome to the Sinatra Template!'
  end
end
