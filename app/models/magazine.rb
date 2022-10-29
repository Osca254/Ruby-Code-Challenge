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

  def contributors
    Article.all.select{|article| article.magazine.name==@name}.map{|article|article.author}.uniq
  end

  def self.find_by_name(name)
    Magazine.all.find{|magazine|magazine.name==name}
  end

  def article_titles
    Article.all.select{|article| article.magazine.name==@name}.map{|article|article.title}
  end

  def contributing_authors
   Magazine.
  end

end
