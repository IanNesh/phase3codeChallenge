class Author
    attr_reader :name
    @@all = []
    def initialize(name)
      @name = name
      @articles = []
      @@all << self
    end
    def articles
      article_arr = []
      Article.all.select do |data|
        if data.author == @name
          article_arr << data
        end
      end
      article_arr
    end
    def add_article(article)
      @articles << article
      article.author = self
    end
    def magazines
      @articles.map { |article| article.magazine }.uniq
    end
    def self.all
      @@all
    end
    def topic_areas
      magazine.map { |magazine| magazine.category}.uniq
      # topics = []
      # articles.select do |data|
      #   if data.author == @name
      #     topics << data.magazine_category
        end
  #   end
  #   topics
  # end
  end