# frozen_string_literal: true

# Posts
class PostsSearchService
  def self.search(current_posts, query)
    current_posts.where("title like '%#{query}%'")
  end
end
