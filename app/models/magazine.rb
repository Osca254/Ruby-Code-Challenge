class Magazine
  attr_accessor :name, :category
  
    @@all = []
  def initialize(name, category)
    @name = name
    @category = category
    @@all << self
    
  end

  def self.all
    @@all
  end
 
def category
  @category
end

  def contributors
    Article.all.select do 
        |article| article.magazine.name==@name
    .map do|article|article.author.uniq
  end

  def self.find_by_name(name)
    Magazine.all.find do
      |magazine|magazine.name==name
  end

  def article_titles
    Article.all.select
    do|article| article.magazine.name==@name
      .map do|article1|article1.title
  end

  def contributing_authors
   self.contributors.filter do |author|
    author.articles.count > 2
  end

end
