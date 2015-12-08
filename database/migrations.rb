require_relative "migrations/create_user.rb"
require_relative "migrations/create_article.rb"
require_relative "migrations/create_category.rb"
require_relative "migrations/create_articles_categories.rb"


CreateUsers.migrate(ARGV[0])
CreateArticles.migrate(ARGV[0])
CreateCategories.migrate(ARGV[0])
CreateArticlesCategories.migrate(ARGV[0])