class Magazine
    attr_reader :name, :category
    @@all = []
    def initialize(name, category)
      @name = name
      @category = category
      @articles = []
      @@all << self
    end
    def self.all
      @@all
    end
    def add_article(article)
      @articles << article
      article.magazine = self
    end
    def contributors
      @articles.map { |article| article.author }.uniq
    end
    def article_titles
      Article.all.map { |article| article.title }
    end
    def contributing_authors
      @articles.map { |article| article.author }.uniq - [nil]
    end
    def Magazine.find_by_name name
      Magazine.all.find {|search_by| search_by.name == name}
    end
  end