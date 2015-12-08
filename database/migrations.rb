require_relative "migrations/create_user.rb"
require_relative "migrations/create_article.rb"
require_relative "migrations/create_category.rb"
require_relative "migrations/create_articles_categories.rb"


CreateUsers.migrate(argv[0])
CreateArticles.migrate(argv[0])
CreateCategories.migrate(argv[0])
CreateArticlesCategories.migrate(argv[0])