require_relative "migrations/create_user.rb"
require_relative "migrations/create_article.rb"
require_relative "migrations/create_category.rb"
require_relative "migrations/create_articles_categories.rb"



CreateUsers.migrate(:up)
CreateArticles.migrate(:up)
CreateCategories.migrate(:up)
CreateArticlesCategories.migrate(:up)