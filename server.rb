module App 
	class Server < Sinatra::Base

    markdown = Redcarpet::Markdown.new(Redcarpet::Render::HTML, autolink: true, space_after_headers: true, bold:true, quote: true, underline: true,hard_wrap: true)

		set :method_override, true
    enable :sessions

		get "/" do
      if session[:user_id]
        @user = User.find(session[:user_id])
        redirect to "/welcome"
      else
        erb :splash 
      end
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
      @article = Article.all
      erb :articleView
    end

    get "/profile/:id" do
      @profile = User.find(params[:id])
      @images = @profile.articles
      @articles = Article.all
      erb :users
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
        redirect to "/wrongPassword"
      end
    end

    get "/wrongPassword" do
      erb :wrongPass
    end

    get "/edit/:id" do
      @article = Article.find(params[:id])
      @categories = Category.all
      @articles = Article.all 
      erb :edit
    end

    patch "/articles/:id" do
      article = Article.find(params['id'])
      article.update({
        post: params[:post],
        img_url: params[:img_url],
        subject: params[:subject],
        post_date: DateTime.now,
        user_id: session[:user_id]
      })
      category = Category.find(params[:category_id])
      category1 = article.categories.where(id: params[:category_id])
      if !category1.exists?

        article.categories.push(category)
      end
      # check to see if there's already that category related to thst article
      redirect to "/articles"

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

   delete "/articles/:id" do
       id = params['id']
       @article = Article.find_by({id: id})
       @article.destroy
       redirect to "/articles"
   end


	end
end