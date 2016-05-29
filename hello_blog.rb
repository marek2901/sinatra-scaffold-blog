class HelloBlog < Sinatra::Base

  set :public_folder => "public", :static => true

  get "/" do
    erb :posts
  end

  get "/posts/:id" do
    @post = Post.find(id: params[:id])
    erb :post
  end
  
end
