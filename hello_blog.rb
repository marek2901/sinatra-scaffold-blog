class HelloBlog < Sinatra::Base

  ## IMPORTANT set this to true so you can set request method in form using hidden field
  ## modern browser don't support put delete patch requests :(
  set :method_override, true
  
  set :public_folder => "public", :static => true

  get "/" do
    erb :posts
  end

  get "/posts/:id" do
    @post = Post.find(id: params[:id])
    erb :post
  end

  get "/post/new" do
    erb :form_post
  end

  post "/posts" do
    Post.new(params[:post]).save
    redirect "/"
  end

  get '/post/:id/edit' do
    @post = Post.find(id: params[:id])
    erb :form_post
  end

  put '/posts/:id' do
    Post.find(id: params[:id]).set(params[:post]).save
    redirect "/"
  end

  delete '/posts/:id' do
    Post.find(id: params[:id]).delete
    redirect "/"
  end

end
