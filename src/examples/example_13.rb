articles = [
  { name: "article 1", likes: 1 },
  { name: "article 2", likes: 10 },
  { name: "article 3", likes: 15 },
  { name: "article 4", likes: 13 },
  { name: "article 5", likes: 4 },
  { name: "article 6", likes: 8 },
  { name: "article 7", likes: 6 },
  { name: "article 8", likes: 20 },
  { name: "article 9", likes: 14 },
  { name: "article 10", likes: 1 },
  { name: "article 11", likes: 1 },
  { name: "article 12", likes: 3 },
  { name: "article 13", likes: 19 },
]

limit = 10

# Try to find articles that have at least 10 likes

def sort_by_likes(articles, limit, not_liked, liked)
  articles.each do |article|
    article[:likes] >= limit ?
      liked.call(article[:name]) : not_liked.call(article[:name])
  end
end

not_liked = Proc.new { |name| puts "This article is not liked : #{name}" }
liked = Proc.new { |name| puts "This article is liked : #{name}" }

sort_by_likes(articles, limit, not_liked, liked)

# special proc : lambda

lambda_not_liked = lambda { |name| puts "This article is not liked : #{name}" }
# another syntax
lambda_liked = ->(name) { puts "This article is liked : #{name}" }

sort_by_likes(articles, limit, lambda_not_liked, lambda_liked)
