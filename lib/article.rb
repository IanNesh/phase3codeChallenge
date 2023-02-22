class Article
    attr_accessor :author, :magazine
    attr_reader :title
    @@all = []
    def initialize(author, magazine, title)
      @author = author
      @magazine = magazine
      @title = title
      @@all << self
    end
    def title
      @title
    end
    def self.all
      @@all
    end
    def magazine_category
      @magazine.category
    end
  end