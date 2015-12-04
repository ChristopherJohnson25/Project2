module App 
	class Server < Sinatra::Base

		set :method_override, true
    enable :sessions

		get "/" do
      @user = User.find(session[:user_id]) if session[:user_id]
      erb :splash 
    end

    get "/signUp" do
      erb :signUp
    end

    post "/users" do
      @user = User.create({
        user_name: params["name"],
        location: params["location"], 
        avatar_url: params["avatar_img_url"], 
        password: params["password"], 
        password_confirmation: params["password_confirmation"],
        join_date: DateTime.now
      })
      redirect to "/welcome"
    end

    get "/welcome" do
      @categories = Category.all
      erb :welcome
    end

    get "/postArticle" do
      @categories = Category.all
      erb :postArticle
    end

    get "/articles" do
      @articles = Article.all
      erb :article
    end

    get "/categories" do
      @categories = Category.all
      erb :categories
    end

    get "/categories/:id" do
      @category = Category.find(params[:id])
      @category.articles
      erb :articleView
    end

		post "/sessions" do
			redirect to "/"
		end

    # Login
    post "/" do
    # Try to find user in DB
      user = User.find_by({
        user_name: params[:name]
      }).try(:authenticate, params[:password])
      if user
      #  Save their ID into the session!
        session[:user_id] = user.id
        redirect to "/welcome"
      else 
        redirect to "/redirect"
      end
    end

    get "/redirect" do
      erb :wrongPass
    end

    post "/post" do
      article = Article.create({
        post: params[:post],
        img_url: params[:img_url],
        subject: params[:subject],
        post_date: DateTime.now,
        user_id: session[:user_id]
      })
      category = Category.find(params[:category_id])
      article.categories.push(category)
      redirect to "/welcome"
    end

    # Logout

    delete "/sessions" do
      session[:user_id] = nil
      redirect to "/"
    end

	end
end