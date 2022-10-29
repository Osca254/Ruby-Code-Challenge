require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end


###  WRITE YOUR TEST CODE HERE ###


article=Author.new("Oscar")
magazine1=Magazine.new("Magazine1","Category1")
magazine2=Magazine.new("Magazine2","Category3")
magazine3=Magazine.new("Magazine3","Category3")
article1=Article.new(article,magazine1,"Title1")
article2=Article.new(article,magazine1,"Title2")
article.add_article(magazine1,"Title3")
article.add_article(magazine2,"Title4")
article.add_article(magazine3,"Title5")





### DO NOT REMOVE THIS
binding.pry

0
