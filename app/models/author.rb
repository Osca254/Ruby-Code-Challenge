class Author
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def articles
    Article.all.select do 
      |article| article.author==@name
    end
  end

  def magazines
    articles.map do
      |article| article.magazine.uniq
    end
  end

  def add_article(magazine,title)
    Article.new(self,magazine,title)
  end

   def topic_areas
    @category.uniq
   end

end
